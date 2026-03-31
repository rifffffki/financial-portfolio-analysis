
SELECT
    strftime('%Y-%m', Date) AS month,
    ROUND(AVG(Bitcoin), 2) AS avg_bitcoin,
    ROUND(AVG(SP500), 2) AS avg_sp500,
    ROUND(AVG(Gold), 2) AS avg_gold,
    ROUND(AVG(BCA), 2) AS avg_bca,
    ROUND(AVG(Telkom), 2) AS avg_telkom
FROM prices
GROUP BY month
ORDER BY month;
