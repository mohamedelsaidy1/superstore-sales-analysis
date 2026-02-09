-- Discount Impact Analysis
SELECT
    CASE
        WHEN Discount = 0 THEN 'No Discount'
        WHEN Discount > 0 AND Discount <= 0.1 THEN 'Low (0–10%)'
        WHEN Discount > 0.1 AND Discount <= 0.3 THEN 'Medium (10–30%)'
        WHEN Discount > 0.3 THEN 'High (30%+)'
        ELSE 'Unknown'
    END AS DiscountRange,
    ROUND(SUM(Sales), 2) AS TotalSales,
    ROUND(SUM(Profit), 2) AS TotalProfit,
    ROUND(
        SUM(Profit) / NULLIF(SUM(Sales), 0),
        4
    ) AS ProfitMargin
FROM SuperStore
GROUP BY
    CASE
        WHEN Discount = 0 THEN 'No Discount'
        WHEN Discount > 0 AND Discount <= 0.1 THEN 'Low (0–10%)'
        WHEN Discount > 0.1 AND Discount <= 0.3 THEN 'Medium (10–30%)'
        WHEN Discount > 0.3 THEN 'High (30%+)'
        ELSE 'Unknown'
    END;
