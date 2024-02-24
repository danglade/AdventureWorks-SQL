CREATE TABLE [dbo].[Client] (
    [ClientId]            INT           IDENTITY (1, 1) NOT NULL,
    [Name]                VARCHAR (100) NOT NULL,
    [AzureServiceBusName] VARCHAR (200) NOT NULL,
    [AlertQueue]          VARCHAR (100) NOT NULL,
    [ServiceBusKey]       VARCHAR (100) NOT NULL,
    [CreatedOn]           DATETIME      NOT NULL,
    CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED ([ClientId] ASC)
);

