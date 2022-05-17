/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
DISTINCT [TransactionDate]
      
  FROM [ImportDB].[Purchasing].[SupplierTransactions]
  ORDER By TransactionDate