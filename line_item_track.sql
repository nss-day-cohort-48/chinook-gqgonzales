/* includes the purchased track name with each invoice line item. */
SELECT Track.Name,
    *
FROM InvoiceLine
    JOIN Track ON InvoiceLine.TrackId = Track.TrackId
ORDER BY Track.Name