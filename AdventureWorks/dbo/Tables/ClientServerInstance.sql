CREATE TABLE [dbo].[ClientServerInstance] (
    [ClientServerInstanceId] INT            IDENTITY (1, 1) NOT NULL,
    [ClientServerId]         INT            NOT NULL,
    [Payload]                NVARCHAR (MAX) NOT NULL,
    [CreatedOn]              DATETIME       NOT NULL,
    CONSTRAINT [PK_ClientServerInstance] PRIMARY KEY CLUSTERED ([ClientServerInstanceId] ASC),
    CONSTRAINT [FK_ClientServerInstance_To_ClientServer] FOREIGN KEY ([ClientServerId]) REFERENCES [dbo].[ClientServer] ([ClientServerId])
);

