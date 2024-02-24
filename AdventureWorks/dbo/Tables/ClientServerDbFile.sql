CREATE TABLE [dbo].[ClientServerDbFile] (
    [ClientServerDbFileId] INT            IDENTITY (1, 1) NOT NULL,
    [ClientServerId]       INT            NOT NULL,
    [Payload]              NVARCHAR (MAX) NOT NULL,
    [CreatedOn]            DATETIME       NOT NULL,
    CONSTRAINT [PK_ClientServerDbFile] PRIMARY KEY CLUSTERED ([ClientServerDbFileId] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IX_ClientServerId]
    ON [dbo].[ClientServerDbFile]([ClientServerId] ASC, [CreatedOn] ASC);

