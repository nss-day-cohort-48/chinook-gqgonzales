/* Provide a query that shows all Invoices. The resultant table should include:
 InvoiceId
 The total number of line items on each invoice */
SELECT InvoiceLine.InvoiceId,
    COUNT(InvoiceLineId) AS LinesPerInvoice
FROM InvoiceLine
GROUP BY InvoiceLine.InvoiceId;