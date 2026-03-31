
SELECT
    asset,
    ROUND(annualized_return, 4) AS annual_return,
    ROUND(annualized_volatility, 4) AS volatility,
    ROUND(sharpe_ratio, 4) AS sharpe_ratio,
    ROUND(max_drawdown, 4) AS max_drawdown,
    RANK() OVER (ORDER BY sharpe_ratio DESC) AS rank
FROM metrics
ORDER BY sharpe_ratio DESC;
