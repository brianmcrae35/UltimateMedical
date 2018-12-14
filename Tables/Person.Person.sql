CREATE TABLE [Person].[Person]
(
[PersonID] [int] NOT NULL,
[LastName] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FirstName] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SSN] [varchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FullName] [varchar] (250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [Person].[Person] ADD CONSTRAINT [PK_Person_ID] PRIMARY KEY CLUSTERED  ([PersonID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [NonClusteredIndex-20181112-123437] ON [Person].[Person] ([LastName], [FirstName], [SSN]) ON [PRIMARY]
GO
