CREATE TABLE [dbo].[VersionControl] (
    [VersionId]      INT           IDENTITY (1, 1) NOT NULL,
    [BuildNumber]    VARCHAR (100) NOT NULL,
    [RequiredUpdate] BIT           NOT NULL,
    [CreatedOn]      DATETIME      NOT NULL,
    CONSTRAINT [PK_VersionControl] PRIMARY KEY CLUSTERED ([VersionId] ASC)
);

