CREATE TABLE [dbo].[Notification] (
    [NotificationId] INT      IDENTITY (1, 1) NOT NULL,
    [IncidentId]     INT      NOT NULL,
    [SentTime]       DATETIME NOT NULL,
    CONSTRAINT [PK_Notification] PRIMARY KEY CLUSTERED ([NotificationId] ASC),
    CONSTRAINT [FK_Notification_To_Incident] FOREIGN KEY ([IncidentId]) REFERENCES [dbo].[Incident] ([IncidentId])
);


GO
CREATE NONCLUSTERED INDEX [IX_IncidentId]
    ON [dbo].[Notification]([IncidentId] ASC)
    INCLUDE([NotificationId], [SentTime]);

