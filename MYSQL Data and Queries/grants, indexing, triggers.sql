CREATE INDEX index1
ON customer(CustomerID,Fname,Lname);

CREATE INDEX index2
ON store(storeID);

CREATE INDEX index3
ON product(ProductID, ProductName, ProductType);

CREATE INDEX index4
ON employee(EmployeeID, Fname, Lname);

CREATE INDEX index5
ON supplier(SupplierID,SupplierName,PhoneNum);

CREATE INDEX index6
ON CustomerOrder(OrderID);

CREATE INDEX paymentMethod
ON paymentMethod(PaymentID);

CREATE INDEX customerOrders
ON customerOrder(orderDate);

CREATE INDEX delivery
ON Delivery(DeliveryDate);

DELIMITER $$
CREATE
	TRIGGER login AFTER INSERT
    ON GenericLogin
    FOR EACH ROW BEGIN
        IF NEW.LoginType = 'Customer' THEN
			INSERT INTO CustomerLogin VALUES(NEW.loginID, NEW.LogTime);
		ELSEIF NEW.LoginType = 'Supplier' THEN
			INSERT INTO SupplierLogin VALUES(NEW.loginID, NEW.LogTime);
		ELSE
			INSERT INTO StoreLogin VALUES(NEW.loginID, NEW.LogTime);
		END IF;
	END$$
DELIMITER ;

DROP TRIGGER CusLogTime;

DELIMITER $$
CREATE TRIGGER excessSupplies 
    BEFORE INSERT
        ON supplyQuotation FOR EACH ROW BEGIN
            IF EXISTS(SELECT sells.quantity FROM sells WHERE NEW.productID = sells.productID AND NEW.storeID = sells.StoreID AND sells.quantity > 100)
                THEN SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Ordering in Excess.';
            END IF;
        END $$
DELIMITER ;

DROP TRIGGER excessSupplies;

DELIMITER $$
CREATE TRIGGER OrderLimit
    BEFORE INSERT
        ON CustomerOrder FOR EACH ROW BEGIN
            IF EXISTS(SELECT sells.quantity FROM sells WHERE NEW.productID = sells.productID AND NEW.storeID = sells.StoreID AND sells.quantity < 1)
                THEN SIGNAL SQLSTATE '45001' SET MESSAGE_TEXT = 'Product out of stock';
            END IF;
        END $$
DELIMITER ;

DROP TRIGGER OrderLimit;

-- Users
CREATE USER 'admin'@'localhost' identified by 'adminpass';
CREATE USER 'customer'@'localhost' identified by 'customerpass';
CREATE USER 'store'@'localhost' identified by 'storepass';
CREATE USER 'supplier'@'localhost' identified by 'supplierpass';

SELECT user, host from mysql.user;

DROP USER admin@localhost;
DROP USER customer@localhost;
DROP USER store@localhost;

SHOW GRANTS FOR admin@localhost;
SHOW GRANTS FOR customer@localhost;

GRANT ALL PRIVILEGES ON *.* TO admin@localhost WITH GRANT OPTION;

grant update (CustomerID) on customer to manager@localhost;

GRANT SELECT ON customerOrder.* TO customer@localhost;
GRANT SELECT ON DeliveryAddress.* TO customer@localhost;
GRANT SELECT ON paymentMethod.* TO customer@localhost;
GRANT SELECT ON customer.* TO customer@localhost;

GRANT SELECT ON customer.* TO store@localhost;
GRANT SELECT ON products.* TO store@localhost;
GRANT SELECT ON sells.* TO store@localhost;
GRANT SELECT ON supplier.* TO store@localhost;

GRANT SELECT ON product.* TO supplier@localhost;
GRANT SELECT ON store.* TO supplier@localhost;
GRANT SELECT ON product.* TO supplier@localhost;


GRANT INSERT, UPDATE, DROP ON ;

REVOKE INSERT, UPDATE, DROP ON DeliveryAddress.* FROM customer@localhost;


GRANT INSERT ON 