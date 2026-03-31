
SELECT
    strftime('%Y-%m', Date) AS month,
    ROUND(MAX(Bitcoin), 2) AS monthly_high,
    ROUND(MIN(Bitcoin), 2) AS monthly_low,
    ROUND(MAX(Bitcoin) - MIN(Bitcoin), 2) AS price_range
FROM prices
GROUP BY month
ORDER BY price_range DESC
LIMIT 10;
