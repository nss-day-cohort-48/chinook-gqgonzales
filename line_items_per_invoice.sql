/* Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for each Invoice. HINT: GROUP BY */
SELECT COUNT(InvoiceLineId) AS ItemsPerInvoice,
    *
FROM InvoiceLine
    JOIN Invoice ON InvoiceLine.InvoiceId = Invoice.InvoiceId
GROUP BY InvoiceLine.InvoiceId;