/* Provide a query that shows the most purchased Media Type. */
SELECT mt.name AS MediaTypeName,
    COUNT(il.TrackId) AS TrackCount
FROM InvoiceLine AS il
    JOIN Track AS t on il.TrackId = t.TrackId
    JOIN Invoice AS i on il.InvoiceId = i.InvoiceId
    JOIN MediaType AS mt on t.MediaTypeId = mt.MediaTypeId
GROUP BY MediaTypeName
ORDER BY TrackCount DESC;