/* Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers. */
SELECT Invoice.Total,
    Customer.FirstName || " " || Customer.LastName as CustomerName,
    Customer.Country,
    Employee.FirstName || " " || Employee.LastName as SalesAgentFullName
FROM Invoice
    JOIN Customer ON Invoice.CustomerId = Customer.CustomerId
    Join Employee ON Customer.SupportRepId = Employee.EmployeeId
ORDER BY Invoice.Total