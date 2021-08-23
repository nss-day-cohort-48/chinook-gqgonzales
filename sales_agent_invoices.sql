/* Provide a query that shows the invoices associated with each sales agent. 
 The resultant table should include the Sales Agent's full name. */
SELECT Employee.FirstName || " " || Employee.LastName as SalesAgentFullName,
    Invoice.InvoiceId,
    Invoice.CustomerId,
    Invoice.InvoiceDate,
    Invoice.BillingAddress,
    Invoice.BillingCity,
    Invoice.BillingState,
    Invoice.BillingCountry,
    Invoice.BillingPostalCode,
    Invoice.Total
FROM Invoice
    JOIN Customer ON Invoice.CustomerId = Customer.CustomerId
    Join Employee ON Customer.SupportRepId = Employee.EmployeeId
ORDER BY Employee.LastName