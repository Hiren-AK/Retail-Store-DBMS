SHOW TABLES;

SELECT * FROM customer;
SELECT * FROM product;
SELECT * FROM store;
SELECT * FROM employee;
SELECT * FROM supplier;
SELECT * FROM DeliveryAddress;
SELECT * FROM StoreAddress;
SELECT * FROM CustomerOrder;
SELECT * FROM sells;
SELECT * FROM supplies;
SELECT * FROM SupplyQuotation;
SELECT * FROM works;
SELECT * FROM manages;
SELECT * FROM delivery;
SELECT * FROM SupplyDelivery;
SELECT * FROM StoreCities;
SELECT * FROM CustomerConcentration;


SELECT COUNT(customerID) FROM customer;
SELECT COUNT(productID) FROM product;
SELECT COUNT(storeID) FROM store;
SELECT COUNT(employeeID) FROM employee;
SELECT COUNT(supplierID) FROM supplier;
SELECT COUNT(addressID) FROM DeliveryAddress;
SELECT COUNT(addressID) FROM StoreAddress;
SELECT COUNT(orderID) FROM CustomerOrder;
SELECT COUNT(productID) FROM sells;
SELECT COUNT(productID) FROM supplies;
SELECT COUNT(supplyQuotationID) FROM SupplyQuotation;
SELECT COUNT(employeeID) FROM works;
SELECT COUNT(storeID) FROM manages;
SELECT COUNT(orderID) FROM delivery;
SELECT COUNT(supplyQuotationID) FROM SupplyDelivery;