/*  Which sales agent made the most in sales in 2009?
 
 HINT: Use the MAX function on a subquery. */
SELECT Sales2009.FullName,
    MAX(Sales2009.EmployeeTotal) AS Total2009
FROM (
        SELECT e.FirstName || " " || e.LastName AS FullName,
            Round(Sum(i.total), 2) AS EmployeeTotal
        FROM Employee as e
            JOIN Customer as c ON e.EmployeeId = c.SupportRepId
            JOIN Invoice as i on c.CustomerId = i.CustomerId
        WHERE i.InvoiceDate LIKE "2009%"
        GROUP BY e.LastName
    ) AS Sales2009;