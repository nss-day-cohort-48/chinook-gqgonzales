/* Provide a query that shows the total number of tracks in each playlist. 
 The Playlist name should be include on the resulant table. */
SELECT Playlist.Name,
    count(Track.TrackId)
FROM Playlist
    JOIN PlaylistTrack ON Playlist.PlaylistId = PlaylistTrack.PlaylistId
    JOIN Track ON PlaylistTrack.TrackId = Track.TrackId
GROUP BY Playlist.Name;
