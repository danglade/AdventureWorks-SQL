CREATE TABLE [dbo].[Incident] (
    [IncidentId]     INT          IDENTITY (1, 1) NOT NULL,
    [AlertId]        INT          NOT NULL,
    [ClientServerId] INT          NOT NULL,
    [StartTime]      DATETIME     NOT NULL,
    [TicketNumber]   VARCHAR (20) NULL,
    [IsDismissed]    BIT          NOT NULL,
    CONSTRAINT [PK_Incident] PRIMARY KEY CLUSTERED ([IncidentId] ASC),
    CONSTRAINT [FK_Incident_To_Alert] FOREIGN KEY ([AlertId]) REFERENCES [dbo].[Alert] ([AlertId]),
    CONSTRAINT [FK_Incident_To_ClientServer] FOREIGN KEY ([ClientServerId]) REFERENCES [dbo].[ClientServer] ([ClientServerId])
);


GO

CREATE TRIGGER trg_GenerateTicketNumber
ON Incident
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE Incident
    SET TicketNumber = 'INC' + RIGHT('0000' + CAST(Inserted.IncidentId AS VARCHAR), 4)
    FROM Inserted
    WHERE Incident.IncidentId = Inserted.IncidentId;
END

