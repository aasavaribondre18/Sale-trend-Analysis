# Sale-trend-Analysis

# 📊 Sales Trend Analysis using SQL

## 📝 Objective
Analyze *monthly revenue* and *order volume* from an *Online Retail dataset*, using SQL aggregation and time-based grouping.

This project demonstrates how to:

✅ Extract time components (Year / Month)  
✅ Perform revenue calculations using SUM()  
✅ Count distinct orders using COUNT(DISTINCT)  
✅ Visualize sales trends over time  
✅ Communicate results with clear tables and charts

---![output img](https://github.com/user-attachments/assets/ef1cbed2-2410-4c94-88a6-94c018f320e3)


## 🛠 Tools Used

- *MySQL Workbench* → SQL analysis  
- *SQL* → Aggregations, Group By, Date functions  
- *Python (Matplotlib)* → Visualization  
- *GitHub* → Project version control and sharing  

---

## 📂 Dataset

- Source: [Online Retail Dataset - Kaggle](https://www.kaggle.com/datasets)  
- Fields used:
  - InvoiceDate → Order date
  - InvoiceNo → Order ID
  - Quantity → Number of products sold
  - UnitPrice → Price per unit
- Derived column:
  - Revenue = Quantity * UnitPrice

---![img sales](https://github.com/user-attachments/assets/7182ab78-1f47-495d-a297-a09cca2272f6)


## 🗃 SQL Query Used

```sql
SELECT
    YEAR(InvoiceDate) AS year,
    MONTH(InvoiceDate) AS month,
    SUM(Quantity * UnitPrice) AS total_revenue,
    COUNT(DISTINCT InvoiceNo) AS order_volume
FROM
    online_retail
WHERE
    InvoiceDate IS NOT NULL
    AND Quantity > 0
    AND UnitPrice > 0
GROUP BY
    YEAR(InvoiceDate),
    MONTH(InvoiceDate)
ORDER BY
    year ASC,
    month ASC;


