CREATE TABLE [dbo].[ClientServerCorruption] (
    [ClientServerCorruptionId] INT            IDENTITY (1, 1) NOT NULL,
    [ClientServerId]           INT            NOT NULL,
    [Payload]                  NVARCHAR (MAX) NOT NULL,
    [CreatedOn]                DATETIME       NOT NULL,
    CONSTRAINT [PK_ClientServerCorruption] PRIMARY KEY CLUSTERED ([ClientServerCorruptionId] ASC),
    CONSTRAINT [FK_ClientServerCorruption_To_ClientServer] FOREIGN KEY ([ClientServerId]) REFERENCES [dbo].[ClientServer] ([ClientServerId])
);

