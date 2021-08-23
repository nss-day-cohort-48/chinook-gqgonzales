/* query that COUNTs the number of line items for Invoice ID 37 */
SELECT COUNT() AS InoviceLinesOn37
FROM InvoiceLine
    JOIN Invoice ON InvoiceLine.InvoiceId = Invoice.InvoiceId
WHERE Invoice.InvoiceId = 37