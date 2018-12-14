CREATE TABLE [Person].[Address]
(
[AddressID] [int] NOT NULL IDENTITY(1, 1) NOT FOR REPLICATION,
[AddressLine1] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[AddressLine2] [nvarchar] (60) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[City] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[State] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ZIP] [nvarchar] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PersonID] [int] NULL
) ON [PRIMARY]
GO
CREATE CLUSTERED INDEX [ix_Address] ON [Person].[Address] ([AddressLine1], [AddressLine2], [PersonID]) ON [PRIMARY]
GO
ALTER TABLE [Person].[Address] ADD CONSTRAINT [FK_PersonAddress] FOREIGN KEY ([PersonID]) REFERENCES [Person].[Person] ([PersonID])
GO
