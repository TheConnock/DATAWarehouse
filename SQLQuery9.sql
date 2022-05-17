USE [importDB_dw]
GO

ALTER TABLE [dbo].[FACT_NumPurchasing] DROP CONSTRAINT [FK__FACT_NumP__Suppl__3E52440B]
GO

ALTER TABLE [dbo].[FACT_NumPurchasing] DROP CONSTRAINT [FK__FACT_NumP__Stock__412EB0B6]
GO

ALTER TABLE [dbo].[FACT_NumPurchasing] DROP CONSTRAINT [FK__FACT_NumP__Purch__403A8C7D]
GO

ALTER TABLE [dbo].[FACT_NumPurchasing] DROP CONSTRAINT [FK__FACT_NumP__Payme__4222D4EF]
GO

ALTER TABLE [dbo].[FACT_NumPurchasing] DROP CONSTRAINT [FK__FACT_NumP__Deliv__3F466844]
GO

/****** Object:  Table [dbo].[FACT_NumPurchasing]    Script Date: 16/10/2564 21:31:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[FACT_NumPurchasing]') AND type in (N'U'))
DROP TABLE [dbo].[FACT_NumPurchasing]
GO

/****** Object:  Table [dbo].[FACT_NumPurchasing]    Script Date: 16/10/2564 21:31:29 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FACT_NumPurchasing](
	[Supplier_Key] [int] NOT NULL,
	[Delivery_Key] [int] NOT NULL,
	[Purchase_Key] [int] NOT NULL,
	[Stock_Key] [int] NOT NULL,
	[Total_NumberofPurchasing] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[Supplier_Key] ASC,
	[Delivery_Key] ASC,
	[Purchase_Key] ASC,
	[Stock_Key] ASC,
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[FACT_NumPurchasing]  WITH CHECK ADD FOREIGN KEY([Delivery_Key])
REFERENCES [dbo].[Delivery_DIM] ([Delivery_Key])
GO


ALTER TABLE [dbo].[FACT_NumPurchasing]  WITH CHECK ADD FOREIGN KEY([Purchase_Key])
REFERENCES [dbo].[Purchase_DIM] ([Purchase_Key])
GO

ALTER TABLE [dbo].[FACT_NumPurchasing]  WITH CHECK ADD FOREIGN KEY([Stock_Key])
REFERENCES [dbo].[Stock_DIM] ([Stock_Key])
GO

ALTER TABLE [dbo].[FACT_NumPurchasing]  WITH CHECK ADD FOREIGN KEY([Supplier_Key])
REFERENCES [dbo].[Supplier_DIM] ([Supplier_Key])
GO


