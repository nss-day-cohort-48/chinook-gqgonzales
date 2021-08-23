SELECT InvoiceId,
    Invoice.CustomerId,
    InvoiceDate,
    Customer.FirstName,
    Customer.LastName,
    Customer.Country
FROM Invoice
    JOIN Customer ON Invoice.CustomerId = Customer.CustomerId
WHERE Customer.Country IS "Brazil"