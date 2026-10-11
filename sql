-- Retail Sales Analysis Queries
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100)
);
## 🛢️ SQL Queries Breakdown

```sql
-- Top 5 Customers by Total Spend
SELECT 
    c.customer_id,
    c.customer_name,
    SUM(t.total_amount) AS total_spent
FROM Transactions t
JOIN Customers c ON t.customer_id = c.customer_id
GROUP BY c.customer_id, c.customer_name
ORDER BY total_spent DESC
LIMIT 5;
```
