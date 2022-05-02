-- Query 1 - Show the orders, products and delivery dates of orders delivered to a particular customer
SELECT CustomerOrder.orderID, CustomerOrder.productID 
FROM CustomerOrder
JOIN delivery
ON CustomerOrder.orderID = delivery.orderID
WHERE CustomerOrder.customerID = 40;


-- Query 2 -Show products and stores where the product has a price of more than 500 rupees and quantity is less than 30
SELECT product.productID, product.productName, store.storeID
FROM product
JOIN sells
ON product.productID = sells.productID
JOIN store
ON store.storeID = sells.storeID
WHERE product.PricePU > 500 AND sells.Quantity < 30;


-- Query 3 -Show how many products are electronics, i.e. 'Laptops' or 'Smart Phones'
SELECT SUM(electronicsTotal)
FROM (
    SELECT COUNT(product.productID) as electronicsTotal
    FROM product
    WHERE product.productType = 'Laptops' OR product.productType = 'Smart Phones'
)eProducts;


-- Query 4 -Create a view to show all employee details except salary and contact info
CREATE VIEW employeeList 
AS SELECT EmployeeID, Fname as FirstName, Lname as LastName, Experience FROM employee;

SELECT * FROM employeeList;


-- Query 5 -Find employeeIDs', names' of managers of stores with employees with Last name as 'Scott'
SELECT employeeID, Fname, Lname
FROM employee
WHERE employeeID in (
    SELECT employeeID
    FROM manages
    WHERE storeID in (
        SELECT storeID
        FROM works
        WHERE employeeID in (
            SELECT employeeID
            FROM employee
            WHERE Lname = 'Scott'
        )
    )
);


-- Query 6 -Using the employeeList view show the First names of employees and how many employees share the same first name
-- and order them lexographically in reverse
SELECT FirstName, COUNT(FirstName)
FROM employeeList
GROUP BY FirstName
ORDER BY FirstName DESC;


-- Query 7 - Find median cost price per unit of products for each supplier
SELECT supplier.supplierID, AVG(costPU) as MedianCostPricePerUnit
FROM supplier
JOIN supplies
ON supplier.supplierID = supplies.supplierID
GROUP BY supplierID;


-- Query 8 - Show delivery date, store address, product type and quantity
SELECT City, ReceivingDate, Quantity, ProductType 
FROM StoreAddress, SupplyDelivery, supplyQuotation, product 
WHERE (StoreAddress.StoreID = supplyQuotation.StoreID) 
AND (StoreAddress.AddressID = SupplyDelivery.AddressID)
AND (supplyQuotation.ProductID = product.ProductID)
ORDER BY ReceivingDate;


-- Query 9 - Show customer first name, last name, product, orderID and payment method
Select Fname, Lname, ProductName, OrderID, paymentType
FROM customer, product, CustomerOrder, paymentMethod
WHERE (customer.CustomerID = CustomerOrder.CustomerID)
AND (product.ProductID = CustomerOrder.ProductID)
AND (customer.CustomerID = paymentMethod.CustomerID)
ORDER BY Fname;


-- Query 10 - Show customer email address and phone number where delivery city is new delhi
SELECT Email, PhoneNum
FROM customer, deliveryAddress
WHERE (customer.customerID = deliveryAddress.customerID)
AND (City = 'New Delhi')
ORDER BY Email;

-- Query 11 - Show the sellers that sell any Laptop under 50000
SELECT StoreID
FROM sells
WHERE EXISTS (
    SELECT ProductID
    FROM product
    WHERE product.productID = sells.productID AND ProductType = 'Laptops' AND PricePU < 50000
);


-- Query 12 - Change a value in a row which is null
INSERT INTO customer VALUES (999,'Sumit','Kaif', NULL,'sumitk2@gmail.com','8LHIn5ebX');
SELECT * 
FROM customer
WHERE CustomerID = '999';
UPDATE customer
SET PhoneNum = '1000000000'
WHERE PhoneNum IS NULL;
SELECT * 
FROM customer
WHERE CustomerID = '999';
DELETE FROM customer
WHERE CustomerID = '999';

-- Query 13 - Show the names of customers who have i as the second letter in their First names
SELECT Fname
FROM customer
WHERE Fname LIKE '_i%';


-- Query 14 - Check which items need restocking and which don't and make note
SELECT StoreID, ProductID,
CASE
    WHEN Quantity > 30 THEN 'No restock needed'
    WHEN Quantity < 10 THEN 'Restock ASAP'
    ELSE 'Restock needed'
END AS QuantityText
FROM sells;

-- Query 15 - Show the top 3 most expensive products
SELECT productID, pricePU
FROM product
ORDER BY pricePU DESC
LIMIT 3;

-- Query 16 - Show the employees and their managers
SELECT employee.employeeID, manages.employeeID AS managerID
FROM employee
LEFT JOIN works ON employee.employeeID = works.employeeID
LEFT JOIN manages ON works.storeID = manages.storeID
ORDER BY managerID;

-- Query 17 - count which type of product is maximum
Select MAX(productType), COUNT(productType)
FROM product
group by productType
ORDER BY count(productType) DESC
LIMIT 1;
