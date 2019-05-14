﻿--##1
CREATE TABLE [User](
    [Id] [int] IDENTITY(1, 1) PRIMARY KEY,
    [FirstName] [nvarchar](250) NOT NULL,
    [LastName] [nvarchar](250) NOT NULL,
    [UpdatedDate] [datetime] NOT NULL)
GO

INSERT INTO [User] ([FirstName], [LastName], [UpdatedDate])
     VALUES ('Yuriy', 'Pelekh', GETUTCDATE())
GO

--##2
INSERT INTO [User] ([FirstName], [LastName], [UpdatedDate])
     VALUES ('Iryna', 'Verbenko', GETUTCDATE())
GO

--##3
CREATE TABLE [Product](
    [Id] [int] IDENTITY(1, 1) PRIMARY KEY,
    [Name] [nvarchar](250) NOT NULL,
    [Price] [int] NOT NULL  )
GO

--##4
INSERT INTO [Product] ([Name], [Price])
     VALUES ('Bread', 14 )
GO

--##5 
ALTER TABLE [Product]
ADD [Image] varbinary(MAX) NOT NULL
