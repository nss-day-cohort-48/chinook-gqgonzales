/* Provide a query that includes the purchased track name 
 AND artist name with each invoice line item. 
 */
SELECT InvoiceLine.InvoiceLineId,
    InvoiceLine.InvoiceId,
    Track.Name AS TrackName,
    Track.Composer AS ArtistName,
    InvoiceLine.UnitPrice,
    InvoiceLine.Quantity
FROM InvoiceLine
    JOIN Track ON InvoiceLine.TrackId = Track.TrackId