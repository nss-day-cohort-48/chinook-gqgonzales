-- Provide a query that shows the total sales per country.
SELECT BillingCountry,
    ROUND(SUM(total), 2) as YearsTotal
FROM Invoice
GROUP BY BillingCountry;
