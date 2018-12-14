CREATE TABLE [Person].[AddressType]
(
[AddressTypeID] [int] NOT NULL IDENTITY(1, 1),
[Name] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Comments] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [Person].[AddressType] ADD CONSTRAINT [PK_AddressType_ID] PRIMARY KEY CLUSTERED  ([AddressTypeID]) ON [PRIMARY]
GO
