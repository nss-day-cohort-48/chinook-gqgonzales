/* Which country 's customers spent the most?
 HINT: Use the MAX function on a subquery. */
SELECT SubQueryResult.BillingCountry,
    MAX(SubQueryResult.TotalSales) AS TopSales
FROM (
        SELECT ROUND(SUM(i.Total), 2) AS TotalSales,
            i.BillingCountry
        FROM Invoice AS i
        GROUP BY i.BillingCountry
    ) AS SubQueryResult;