-- How many Invoices were there in 2009 and 2011?
SELECT count()
FROM Invoice
WHERE InvoiceDate LIKE "2009%"
    OR InvoiceDate LIKE "2011%"