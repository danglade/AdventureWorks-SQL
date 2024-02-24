CREATE TABLE [dbo].[Alert] (
    [AlertId]              INT           NOT NULL,
    [Name]                 VARCHAR (200) NOT NULL,
    [Description]          VARCHAR (500) NULL,
    [NotificationInterval] INT           NOT NULL,
    [Message]              VARCHAR (500) NOT NULL,
    CONSTRAINT [PK_Alert] PRIMARY KEY CLUSTERED ([AlertId] ASC)
);

