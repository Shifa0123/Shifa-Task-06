 SELECT
    strftime('%m', order_date) AS month,
    SUM(SUM(amount)) OVER (ORDER BY strftime('%m', order_date)) AS cumulative_revenue
FROM orders
GROUP BY strftime('%m', order_date)
ORDER BY month;

     #Use SUM() for revenue.
 SELECT SUM(amount) AS total_revenue
  FROM orders;
