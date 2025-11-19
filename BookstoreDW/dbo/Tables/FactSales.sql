CREATE TABLE [dbo].[FactSales](
	[FactSalesKey] [bigint] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NOT NULL,
	[LineID] [int] NOT NULL,
	[DateKey] [int] NOT NULL,
	[CustomerKey] [int] NOT NULL,
	[BookKey] [int] NOT NULL,
	[ShippingMethodKey] [int] NULL,
	[OrderStatusKey] [int] NULL,
	[Quantity] [int] NOT NULL,
	[UnitPrice] [decimal](5, 2) NOT NULL,
	[LineTotal] [decimal](10, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[FactSalesKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FactSales]  WITH CHECK ADD  CONSTRAINT [FK_FactSales_DimBook] FOREIGN KEY([BookKey])
REFERENCES [dbo].[DimBook] ([BookKey])
GO

ALTER TABLE [dbo].[FactSales] CHECK CONSTRAINT [FK_FactSales_DimBook]
GO
ALTER TABLE [dbo].[FactSales]  WITH CHECK ADD  CONSTRAINT [FK_FactSales_DimCustomer] FOREIGN KEY([CustomerKey])
REFERENCES [dbo].[DimCustomer] ([CustomerKey])
GO

ALTER TABLE [dbo].[FactSales] CHECK CONSTRAINT [FK_FactSales_DimCustomer]
GO
ALTER TABLE [dbo].[FactSales]  WITH CHECK ADD  CONSTRAINT [FK_FactSales_DimDate] FOREIGN KEY([DateKey])
REFERENCES [dbo].[DimDate] ([DateKey])
GO

ALTER TABLE [dbo].[FactSales] CHECK CONSTRAINT [FK_FactSales_DimDate]
GO
ALTER TABLE [dbo].[FactSales]  WITH CHECK ADD  CONSTRAINT [FK_FactSales_DimOrderStatus] FOREIGN KEY([OrderStatusKey])
REFERENCES [dbo].[DimOrderStatus] ([OrderStatusKey])
GO

ALTER TABLE [dbo].[FactSales] CHECK CONSTRAINT [FK_FactSales_DimOrderStatus]
GO
ALTER TABLE [dbo].[FactSales]  WITH CHECK ADD  CONSTRAINT [FK_FactSales_DimShippingMethod] FOREIGN KEY([ShippingMethodKey])
REFERENCES [dbo].[DimShippingMethod] ([ShippingMethodKey])
GO

ALTER TABLE [dbo].[FactSales] CHECK CONSTRAINT [FK_FactSales_DimShippingMethod]