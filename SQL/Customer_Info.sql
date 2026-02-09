--Customer Info
--Base CTE Cointain Core Columns From Main Table 
WITH Base_Query AS 
(
SELECT 
	Customer_ID,
	Customer_Name,
	Order_ID,
	Order_Date,
	Ship_Date,
	Ship_Mode,
	Country,
	State,
	Region,
	Product_ID,
	Product_Name,
	Category,
	Sub_Category,
	Sales,
	Quantity,
	Discount,
	Profit
FROM SuperStore
)
-- AGG CTE Contain The Calculations
, AGG_Query AS
(
SELECT 
Customer_ID,
Customer_Name,
ROUND(SUM(Sales),2) AS TotalSales,
ROUND(SUM(profit),2) AS TotalProfit,
SUM(Quantity) AS TotalQuantity,
COUNT(DISTINCT Order_ID) AS NoOfOrders,
MIN(Order_Date) AS First_Order,
MAX(Order_Date) AS Last_Order,
DATEDIFF(MONTH,MIN(Order_Date),MAX(Order_Date)) AS Lifespan
FROM Base_Query
GROUP BY Customer_ID,Customer_Name
)
--Main Query 
SELECT
Customer_Name,
NoOfOrders,
TotalSales,
TotalProfit,
(CAST(TotalProfit AS float)/ TotalSales) AS ProfitMargin,
Lifespan
FROM AGG_Query
