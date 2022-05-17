
create table FACT_NumPurchasing
(Supplier_Key int references Supplier_DIM(Supplier_Key),
Delivery_Key int references Delivery_DIM(Delivery_Key),
Purchase_Key int references Purchase_DIM(Purchase_Key),
Stock_Key int references Stock_DIM(Stock_Key),
Total_NumberofPurchasing float,
Primary Key (Supplier_Key,Delivery_Key,Purchase_Key,Stock_Key));
GO 
