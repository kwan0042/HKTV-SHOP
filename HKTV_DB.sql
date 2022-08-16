use FinalProject
CREATE TABLE [dbo].[Customer] (
    [CustomerId] INT           IDENTITY (1, 1) NOT NULL,
    [Name]       VARCHAR (30)  NULL,
    [Password]   VARCHAR (30)  NULL,
    [Address]    VARCHAR (100) NULL,
    [Phone]      VARCHAR (30)  NULL,
    [Email]      VARCHAR (319) NULL,
    PRIMARY KEY CLUSTERED ([CustomerId] ASC)
);

CREATE TABLE [dbo].[Manufacturer] (
    [ManufacturerID] INT           IDENTITY (1, 1) NOT NULL,
    [Name]           VARCHAR (30)  NULL,
    [Country]        VARCHAR (30)  NULL,
    [Detail]         VARCHAR (MAX) NULL,
    PRIMARY KEY CLUSTERED ([ManufacturerID] ASC)
);


CREATE TABLE [dbo].[Television] (
    [ProductID]      INT          IDENTITY (1, 1) NOT NULL,
    [Model]          VARCHAR (30) NULL,
    [ManufacturerId] INT          NULL,
    [Resolution]     VARCHAR (30) NULL,
    [HdrSupport]     VARCHAR (3)  NULL,
    [ScreenSize]     VARCHAR (30) NULL,
    [Price]          FLOAT (53)   NULL,
    [Inventory]      INT          NULL,
    PRIMARY KEY CLUSTERED ([ProductID] ASC),
    FOREIGN KEY ([ManufacturerId]) REFERENCES [dbo].[Manufacturer] ([ManufacturerID])
);

CREATE TABLE [dbo].[Invoice] (
    [InvoiceId]  INT  IDENTITY (1, 1) NOT NULL,
    [CustomerId] INT  NOT NULL,
    [ProductId]  INT  NOT NULL,
    [Quantity]   INT  NULL,
    [Date]       DATE NULL,
    PRIMARY KEY CLUSTERED ([InvoiceId] ASC),
    FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[Customer] ([CustomerId]),
    FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Television] ([ProductID])
);


INSERT INTO [dbo].[Customer] ([CustomerId], [Name], [Password]) VALUES (N'1', N'Daniel Kwan', N'1')
INSERT INTO [dbo].[Customer] ([CustomerId], [Name], [Password]) VALUES (N'2', N'Alan To', N'2')

SET IDENTITY_INSERT [dbo].[Manufacturer] ON
INSERT INTO [dbo].[Manufacturer] ([ManufacturerID], [Name], [Country], [Detail]) VALUES (1, N'LG', N'South Korean', N'LG Group is a multinational enterprise group headquartered in Seoul, South Korea. Its main business scope includes electronics and communication technology, home appliances and chemicals.')
INSERT INTO [dbo].[Manufacturer] ([ManufacturerID], [Name], [Country], [Detail]) VALUES (2, N'Samsung', N'South Korean', N'Samsung Display - the world s largest display company, mainly engaged in the production of LCD and AMOLED panels and screens, is a company composed of Samsung Electronics Panel Division and Samsung Mobile Display (SMD) and S-LCD.')
INSERT INTO [dbo].[Manufacturer] ([ManufacturerID], [Name], [Country], [Detail]) VALUES (3, N'Sony', N'Japan', N'Sony Group Corporation  is a Japanese multinational conglomerate corporation headquartered in Konan, Minato, Tokyo, Japan.As a major technology company, it operates as one of the world"s largest manufacturers of consumer and professional electronic products.')
INSERT INTO [dbo].[Manufacturer] ([ManufacturerID], [Name], [Country], [Detail]) VALUES (4, N'Philips', N'Japan', N'Koninklijke Philips N.V.  is a Dutch multinational conglomerate corporation that was founded in Eindhoven in 1891.  Philips was formerly one of the largest electronics companies in the world.')
SET IDENTITY_INSERT [dbo].[Manufacturer] OFF

SET IDENTITY_INSERT [dbo].[Television] ON
INSERT INTO [dbo].[Television] ([ProductID], [Model], [ManufacturerId], [Resolution], [HdrSupport], [ScreenSize], [Price], [Inventory]) VALUES (1, N'LGOLED48C1', 1, N'4K', N'yes', N'65', 1899, 100)
INSERT INTO [dbo].[Television] ([ProductID], [Model], [ManufacturerId], [Resolution], [HdrSupport], [ScreenSize], [Price], [Inventory]) VALUES (2, N'LGOLED55C1', 1, N'4K', N'yes', N'55', 1499, 100)
INSERT INTO [dbo].[Television] ([ProductID], [Model], [ManufacturerId], [Resolution], [HdrSupport], [ScreenSize], [Price], [Inventory]) VALUES (3, N'LGOLED65C1', 1, N'4K', N'yes', N'65', 1399, 100)
INSERT INTO [dbo].[Television] ([ProductID], [Model], [ManufacturerId], [Resolution], [HdrSupport], [ScreenSize], [Price], [Inventory]) VALUES (4, N'LGOLED48C2', 1, N'4K', N'yes', N'65', 1799, 50)
INSERT INTO [dbo].[Television] ([ProductID], [Model], [ManufacturerId], [Resolution], [HdrSupport], [ScreenSize], [Price], [Inventory]) VALUES (5, N'LGOLED55C2', 1, N'4K', N'yes', N'55', 1399, 48)
INSERT INTO [dbo].[Television] ([ProductID], [Model], [ManufacturerId], [Resolution], [HdrSupport], [ScreenSize], [Price], [Inventory]) VALUES (6, N'LGOLED65C3', 1, N'4K', N'yes', N'65', 1299, 64)
INSERT INTO [dbo].[Television] ([ProductID], [Model], [ManufacturerId], [Resolution], [HdrSupport], [ScreenSize], [Price], [Inventory]) VALUES (7, N'65NANO85UNA', 1, N'HD', N'yes', N'65', 999, 88)
INSERT INTO [dbo].[Television] ([ProductID], [Model], [ManufacturerId], [Resolution], [HdrSupport], [ScreenSize], [Price], [Inventory]) VALUES (8, N'55NANO85UNA', 1, N'HD', N'yes', N'65', 699, 78)
INSERT INTO [dbo].[Television] ([ProductID], [Model], [ManufacturerId], [Resolution], [HdrSupport], [ScreenSize], [Price], [Inventory]) VALUES (9, N'75NANO85UNA', 1, N'HD', N'yes', N'75', 1299, 86)
INSERT INTO [dbo].[Television] ([ProductID], [Model], [ManufacturerId], [Resolution], [HdrSupport], [ScreenSize], [Price], [Inventory]) VALUES (10, N'75Q60B', 2, N'4K', N'yes', N'75', 2000, 100)
INSERT INTO [dbo].[Television] ([ProductID], [Model], [ManufacturerId], [Resolution], [HdrSupport], [ScreenSize], [Price], [Inventory]) VALUES (11, N'48H7C', 2, N'HD', N'No', N'48', 550, 1)
INSERT INTO [dbo].[Television] ([ProductID], [Model], [ManufacturerId], [Resolution], [HdrSupport], [ScreenSize], [Price], [Inventory]) VALUES (12, N'SONYOLED75X5', 3, N'4K', N'yes', N'75', 1980, 100)
SET IDENTITY_INSERT [dbo].[Television] OFF