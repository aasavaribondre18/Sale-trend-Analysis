SELECT * FROM online_sales_db.online_retail;
SELECT
    YEAR(STR_TO_DATE(InvoiceDate, '%m/%d/%y %H:%i')) AS year,
    MONTH(STR_TO_DATE(InvoiceDate, '%m/%d/%y %H:%i')) AS month,
    SUM(Quantity * UnitPrice) AS total_revenue,
    COUNT(DISTINCT InvoiceNo) AS order_volume
FROM
    online_retail
WHERE
    InvoiceDate IS NOT NULL
    AND Quantity > 0
    AND UnitPrice > 0
GROUP BY
    YEAR(STR_TO_DATE(InvoiceDate, '%m/%d/%y %H:%i')),
    MONTH(STR_TO_DATE(InvoiceDate, '%m/%d/%y %H:%i'))
ORDER BY
    year ASC,
    month ASC;