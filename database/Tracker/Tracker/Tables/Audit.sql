﻿CREATE TABLE [dbo].[Audit]
(
    [Id] INT NOT NULL IDENTITY, 
    [Date] DATETIME NOT NULL,
    [UserId] INT NULL,
    [TaskId] INT NULL,
    [Content] NVARCHAR(max) NOT NULL,
    [Username] NVARCHAR(50) NOT NULL,
    [Created] DATETIMEOFFSET NOT NULL CONSTRAINT [DF_Audit_Created] DEFAULT (SYSUTCDATETIME()),
    [CreatedBy] NVARCHAR(100) NULL,
    [Updated] DATETIMEOFFSET NOT NULL CONSTRAINT [DF_Audit_Updated] DEFAULT (SYSUTCDATETIME()),
    [UpdatedBy] NVARCHAR(100) NULL,
    [RowVersion] ROWVERSION NOT NULL,
    CONSTRAINT [PK_Audit] PRIMARY KEY ([Id])

)
