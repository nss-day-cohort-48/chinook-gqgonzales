/* Provide a query that shows the top 5 most purchased tracks over all. */
SELECT t.Name AS TrackName,
    COUNT(il.TrackId) TracksSold
FROM Track AS t
    JOIN InvoiceLine AS il ON il.TrackId = t.TrackId
    JOIN Invoice AS i ON i.InvoiceId = il.InvoiceId
GROUP BY TrackName
ORDER BY TracksSold DESC
LIMIT 5;