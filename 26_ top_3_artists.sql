/* Provide a query that shows the top 3 best selling artists.
 */
SELECT ar.Name AS ArtistName,
    COUNT(il.TrackId) AS TracksSold
FROM Artist AS ar
    JOIN Album AS ab ON ab.ArtistId = ar.ArtistId
    JOIN Track AS t ON t.AlbumId = ab.AlbumId
    JOIN InvoiceLine AS il ON il.TrackId = t.TrackId
    JOIN Invoice AS i ON i.InvoiceId = il.InvoiceId
GROUP BY ar.ArtistId
ORDER BY TracksSold DESC
LIMIT 3;