-- Monthly Profit Margin
SELECT
    DATETRUNC(MONTH, Order_Date) AS OrderMonth,
    ROUND(SUM(Sales), 2) AS TotalSales,
    ROUND(SUM(Profit), 2) AS TotalProfit,
    ROUND(
        SUM(Profit) / NULLIF(SUM(Sales), 0),
        4
    ) AS ProfitMargin
FROM SuperStore
GROUP BY DATETRUNC(MONTH, Order_Date)
ORDER BY OrderMonth;
