CREATE TABLE [dbo].[ClientServerJob] (
    [ClientServerJobId] INT            IDENTITY (1, 1) NOT NULL,
    [ClientServerId]    INT            NOT NULL,
    [Payload]           NVARCHAR (MAX) NOT NULL,
    [CreatedOn]         DATETIME       NOT NULL,
    CONSTRAINT [PK_ClientServerAgent] PRIMARY KEY CLUSTERED ([ClientServerJobId] ASC),
    CONSTRAINT [FK_ClientServerJob_To_ClientServer] FOREIGN KEY ([ClientServerId]) REFERENCES [dbo].[ClientServer] ([ClientServerId])
);

