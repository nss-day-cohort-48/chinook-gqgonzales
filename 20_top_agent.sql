/* Which sales agent made the most in sales over all? */
SELECT TotalSales.FullName,
    MAX(TotalSales.EmployeeTotal) AS HighestTotal
FROM (
        SELECT e.FirstName || " " || e.LastName AS FullName,
            Round(Sum(i.total), 2) AS EmployeeTotal
        FROM Employee AS e
            JOIN Customer AS c ON e.EmployeeId = c.SupportRepId
            JOIN Invoice AS i on c.CustomerId = i.CustomerId
        GROUP BY e.LastName
    ) AS TotalSales;