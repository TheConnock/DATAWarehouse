/****** Script for SelectTopNRows command from SSMS  ******/
SELECT SUM(st.TaxAmount),st.TransactionDate, s.SupplierID

FROM [Purchasing].[SupplierTransactions] st,
[Purchasing].[Suppliers] s
WHERE st.supplierID = s.supplierID

GROUP BY st.TransactionDate, s.SupplierID
