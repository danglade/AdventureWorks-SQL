CREATE TABLE [dbo].[Error] (
    [PullerErrorId]  INT            IDENTITY (1, 1) NOT NULL,
    [ClientServerId] INT            NOT NULL,
    [Source]         VARCHAR (100)  NOT NULL,
    [MethodName]     VARCHAR (100)  NOT NULL,
    [ErrorMessage]   NVARCHAR (MAX) NOT NULL,
    [StackTrace]     NVARCHAR (MAX) NULL,
    [CreatedOn]      DATETIME       NOT NULL,
    CONSTRAINT [PK_PullerError] PRIMARY KEY CLUSTERED ([PullerErrorId] ASC),
    CONSTRAINT [FK_PullerError_To_ClientServer] FOREIGN KEY ([ClientServerId]) REFERENCES [dbo].[ClientServer] ([ClientServerId])
);

