/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [Supplier_Key]
      ,[SupplierTran_Key]
      ,[Time_Key]
      ,[Total_Tax_Amount]
  FROM [importDB_dw].[dbo].[FACT_TaxAmount] ORDER BY Supplier_Key, Time_Key, SupplierTran_Key
