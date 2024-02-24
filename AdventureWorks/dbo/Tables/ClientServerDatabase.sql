CREATE TABLE [dbo].[ClientServerDatabase] (
    [ClientServerDatabaseId] INT            IDENTITY (1, 1) NOT NULL,
    [ClientServerId]         INT            NOT NULL,
    [Payload]                NVARCHAR (MAX) NOT NULL,
    [CreatedOn]              DATETIME       NOT NULL,
    CONSTRAINT [PK_ClientServerDatabaseId_1] PRIMARY KEY CLUSTERED ([ClientServerDatabaseId] ASC),
    CONSTRAINT [FK_ClientServerDatabase_To_ClientServer] FOREIGN KEY ([ClientServerId]) REFERENCES [dbo].[ClientServer] ([ClientServerId])
);

