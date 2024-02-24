CREATE TABLE [dbo].[CpuPayload] (
    [CpuId]   INT            NOT NULL,
    [Payload] NVARCHAR (MAX) NOT NULL,
    CONSTRAINT [PK_CpuPayload] PRIMARY KEY CLUSTERED ([CpuId] ASC),
    CONSTRAINT [FK_CpuPayload_To_Cpu] FOREIGN KEY ([CpuId]) REFERENCES [dbo].[Cpu] ([CpuId])
);

