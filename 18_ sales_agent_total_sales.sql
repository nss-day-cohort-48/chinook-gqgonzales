/* Provide a query that shows total sales made by each sales agent. 
 The resultant table should include:
 Employee full name
 Total sales for each employee (all time) */
SELECT e.FirstName || " " || e.LastName as FullName,
    Round(Sum(i.total), 2)
FROM Employee as e
    JOIN Customer as c ON e.EmployeeId = c.SupportRepId
    JOIN Invoice as i on c.CustomerId = i.CustomerId
GROUP BY e.LastName
ORDER BY e.LastName