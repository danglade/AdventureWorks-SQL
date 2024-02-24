CREATE TABLE [dbo].[ClientServerExtendedInfo] (
    [ClientServerExtendedInfoId] INT            IDENTITY (1, 1) NOT NULL,
    [ClientServerId]             INT            NOT NULL,
    [Payload]                    NVARCHAR (MAX) NULL,
    [CreatedOn]                  DATETIME       NOT NULL,
    CONSTRAINT [PK_ClientServerExtendedInfo] PRIMARY KEY CLUSTERED ([ClientServerExtendedInfoId] ASC),
    CONSTRAINT [FK_ClientServerExtendedInfo_To_ClientServer] FOREIGN KEY ([ClientServerId]) REFERENCES [dbo].[ClientServer] ([ClientServerId])
);

