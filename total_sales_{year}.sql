-- What are the respective total sales for each of those years?
SELECT ROUND(SUM(total), 2) as YearsTotal
FROM Invoice
WHERE InvoiceDate LIKE "2009%";
/* 2009 */
SELECT ROUND(SUM(total), 2) as YearsTotal
FROM Invoice
WHERE InvoiceDate LIKE "2011%";
/* 2011 */
SELECT ROUND(SUM(total), 2) as YearsTotal
FROM Invoice
WHERE InvoiceDate LIKE "2009%"
    OR InvoiceDate LIKE "2011%"
    /* BOTH */