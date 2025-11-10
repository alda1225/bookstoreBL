
USE [Bookstore]
GO

INSERT [dbo].[order_status] ([status_id], [status_value]) VALUES (1, N'Order Received')
GO

INSERT [dbo].[order_status] ([status_id], [status_value]) VALUES (2, N'Pending Delivery')
GO

INSERT [dbo].[order_status] ([status_id], [status_value]) VALUES (3, N'Delivery In Progress')
GO

INSERT [dbo].[order_status] ([status_id], [status_value]) VALUES (4, N'Delivered')
GO

INSERT [dbo].[order_status] ([status_id], [status_value]) VALUES (5, N'Cancelled')
GO

INSERT [dbo].[order_status] ([status_id], [status_value]) VALUES (6, N'Returned')
GO
