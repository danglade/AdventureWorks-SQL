CREATE TABLE [dbo].[ClientServerDrive] (
    [ClientServerDriveId] INT            IDENTITY (1, 1) NOT NULL,
    [ClientServerId]      INT            NOT NULL,
    [Payload]             NVARCHAR (MAX) NOT NULL,
    [CreatedOn]           DATETIME       NOT NULL,
    CONSTRAINT [PK_ClientServerDrive] PRIMARY KEY CLUSTERED ([ClientServerDriveId] ASC),
    CONSTRAINT [FK_ClientServerDrive_To_ClientServer] FOREIGN KEY ([ClientServerId]) REFERENCES [dbo].[ClientServer] ([ClientServerId])
);

