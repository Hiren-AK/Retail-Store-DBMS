CREATE VIEW SupplyInfo AS 
SELECT S.SupplierID, S.SupplierName, P.ProductID, P.CostPU as CostPerUnit, S.PhoneNum as PhoneNumber, S.Email
FROM supplies P, supplier S
WHERE S.SupplierID=P.SupplierID;

CREATE VIEW RetailStores AS
SELECT S.StoreID, S.Email, S.PhoneNum as PhoneNumber, A.City, A.AddressLine1, A.AddressLine2
FROM store S, storeAddress A
WHERE S.StoreID=A.StoreID;

CREATE VIEW StoreCities
AS SELECT Pincode, City
FROM storeAddress
ORDER BY City;

CREATE VIEW CustomerConcentration
AS SELECT Pincode, City, COUNT(CustomerID) as Customers
FROM deliveryAddress
GROUP BY Pincode;