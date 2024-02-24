CREATE TABLE [dbo].[Cpu] (
    [CpuId]          INT      IDENTITY (1, 1) NOT NULL,
    [ClientServerId] INT      NOT NULL,
    [EventTime]      DATETIME NOT NULL,
    [SQLProcess]     INT      NOT NULL,
    [SystemIdle]     INT      NOT NULL,
    [OtherProcess]   INT      NOT NULL,
    [Timestamp]      DATETIME NOT NULL,
    CONSTRAINT [PK_CPU_1] PRIMARY KEY CLUSTERED ([CpuId] ASC),
    CONSTRAINT [FK_CPU_To_ClientServer] FOREIGN KEY ([ClientServerId]) REFERENCES [dbo].[ClientServer] ([ClientServerId])
);


GO
CREATE NONCLUSTERED INDEX [IX_Timestamp]
    ON [dbo].[Cpu]([ClientServerId] ASC, [Timestamp] ASC)
    INCLUDE([CpuId], [EventTime], [SQLProcess], [SystemIdle], [OtherProcess]);

