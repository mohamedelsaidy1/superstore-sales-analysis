-- Monthly Profit Trend
SELECT
    DATETRUNC(MONTH, Order_Date) AS OrderMonth,
    ROUND(SUM(Profit), 2) AS TotalProfit
FROM SuperStore
GROUP BY DATETRUNC(MONTH, Order_Date)
ORDER BY OrderMonth;
