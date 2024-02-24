CREATE TABLE [dbo].[Occurrence] (
    [OcurrenceId]    INT      IDENTITY (1, 1) NOT NULL,
    [IncidentId]     INT      NOT NULL,
    [RefId]          INT      NULL,
    [OccurrenceTime] DATETIME NOT NULL,
    CONSTRAINT [PK_Ocurrence] PRIMARY KEY CLUSTERED ([OcurrenceId] ASC),
    CONSTRAINT [FK_Ocurrence_To_Incident] FOREIGN KEY ([IncidentId]) REFERENCES [dbo].[Incident] ([IncidentId])
);


GO
CREATE NONCLUSTERED INDEX [IX_IncidentId]
    ON [dbo].[Occurrence]([IncidentId] ASC)
    INCLUDE([OcurrenceId], [RefId], [OccurrenceTime]);

