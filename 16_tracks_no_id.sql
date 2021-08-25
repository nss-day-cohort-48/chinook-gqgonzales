/* Provide a query that shows all the Tracks, but displays no IDs. The resultant table should include:
 Album name
 Media type
 Genre
 */
SELECT t.Name as TrackName,
    a.title as AlbumName,
    g.name as GenreName,
    mt.name as MediaTypeName
FROM Track as t
    JOIN Album as a ON t.AlbumId = a.AlbumId
    JOIN Genre as g ON t.GenreId = g.GenreId
    JOIN MediaType as mt ON t.MediaTypeId = mt.MediaTypeId