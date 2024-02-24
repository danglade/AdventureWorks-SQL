CREATE TABLE [dbo].[ClientServer] (
    [ClientServerId]  INT           IDENTITY (1, 1) NOT NULL,
    [ClientId]        INT           NOT NULL,
    [ServerName]      VARCHAR (100) NOT NULL,
    [ApiKey]          VARCHAR (100) NOT NULL,
    [InboundQueue]    VARCHAR (100) NOT NULL,
    [OutboundQueue]   VARCHAR (100) NOT NULL,
    [IsInspected]     BIT           NOT NULL,
    [BuildNumber]     VARCHAR (50)  NOT NULL,
    [IsSSMSAvailable] BIT           NOT NULL,
    [DeletedOn]       DATETIME      NULL,
    CONSTRAINT [PK_ClientServer] PRIMARY KEY CLUSTERED ([ClientServerId] ASC),
    CONSTRAINT [FK_ClientServer_To_Client] FOREIGN KEY ([ClientId]) REFERENCES [dbo].[Client] ([ClientId])
);

