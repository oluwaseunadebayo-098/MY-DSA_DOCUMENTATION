CREATE DATABASE DSA_CAPSTONE_PROJECT

SELECT *
from [KMS Sql Case Study]

SELECT TOP 1 
Product_Category, SUM(Sales) AS Total_Sales
FROM 
   [KMS Sql Case Study]  
GROUP BY
    Product_Category
ORDER BY
    Total_Sales DESC;


	SELECT TOP 3
    Region,
    SUM(Sales) AS Total_Sales
FROM
    [KMS Sql Case Study]
GROUP BY
    Region
ORDER BY
    Total_Sales DESC;


	SELECT TOP 3
    Region,
    SUM(Sales) AS Total_Sales
FROM
    [KMS Sql Case Study]
GROUP BY
    Region
ORDER BY
    Total_Sales ASC;


	SELECT
    SUM(Sales) AS Total_Appliance_Sales_Ontario
FROM
  [KMS Sql Case Study]
WHERE
    Product_Category = 'Appliances'
    AND Region = 'Ontario';

	SELECT DISTINCT Product_Category
FROM [KMS Sql Case Study];

SELECT TOP 10
    Customer_Name,
    SUM(Sales) AS Total_Sales
FROM
    [KMS Sql Case Study]
GROUP BY
    Customer_Name
ORDER BY
    Total_Sales ASC;

	SELECT *
	FROM [KMS Sql Case Study];

	SELECT 
    Ship_Mode,
    SUM(Shipping_Cost) AS Total_Shipping_Cost
FROM 
    [KMS Sql Case Study]
GROUP BY 
    Ship_Mode
ORDER BY 
    Total_Shipping_Cost DESC;


	SELECT TOP 10
    Customer_Name,
    SUM(Sales) AS Total_Sales
FROM 
    [KMS Sql Case Study]
GROUP BY 
    Customer_Name
ORDER BY 
    Total_Sales DESC;


	SELECT TOP 1
    Customer_Name,
		ROUND(SUM(Sales),2) AS Total_Sales
FROM 
   [KMS Sql Case Study]
WHERE 
    Customer_Segment = 'Small Business'
GROUP BY 
    Customer_Name
ORDER BY 
    Total_Sales DESC;


	SELECT TOP 1
    Customer_Name,
    COUNT(DISTINCT Order_ID) AS Total_Orders
FROM 
    [KMS Sql Case Study]
WHERE 
    Customer_Segment = 'Corporate'
    AND YEAR(Order_Date) BETWEEN 2009 AND 2012
GROUP BY 
    Customer_Name
ORDER BY 
    Total_Orders DESC;


SELECT TOP 1
    Customer_Name,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM 
    [KMS Sql Case Study]
WHERE 
    Customer_Segment = 'Consumer'
GROUP BY 
    Customer_Name
ORDER BY 
    Total_Profit DESC;


	SELECT DISTINCT
    Customer_Name,
    Customer_Segment
FROM 
    [KMS Sql Case Study]
WHERE 
    Returned = 'True';


	SELECT 
    Order_Priority,
    Ship_Mode,
    COUNT(*) AS Number_of_Orders,
    ROUND(SUM(Shipping_Cost), 2) AS Total_Shipping_Cost
FROM 
    [KMS Sql Case Study]
GROUP BY 
    Order_Priority, Ship_Mode
ORDER BY 
    Order_Priority, Ship_Mode;


	SELECT * 
	FROM [KMS Sql Case Study]