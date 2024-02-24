CREATE TABLE [dbo].[ClientServerOsInfo] (
    [ClientServerOsInfoId] INT            IDENTITY (1, 1) NOT NULL,
    [ClientServerId]       INT            NOT NULL,
    [Payload]              NVARCHAR (MAX) NOT NULL,
    [CreatedOn]            DATETIME       NOT NULL,
    CONSTRAINT [PK_ClientServerOsInfo] PRIMARY KEY CLUSTERED ([ClientServerOsInfoId] ASC),
    CONSTRAINT [FK_ClientServerOsInfo_To_ClientServer] FOREIGN KEY ([ClientServerId]) REFERENCES [dbo].[ClientServer] ([ClientServerId])
);

