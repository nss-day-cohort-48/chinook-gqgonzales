/* Provide a query that shows the most purchased track(s) of 2013.
 */
SELECT t.Name as TrackName,
    COUNT(il.InvoiceId) as AmmountSold
FROM InvoiceLine as il
    JOIN Track as t ON il.TrackId = t.TrackId
    JOIN Invoice as i ON il.InvoiceId = i.InvoiceId
WHERE i.InvoiceDate LIKE "2013%"
GROUP BY TrackName
ORDER BY AmmountSold DESC;