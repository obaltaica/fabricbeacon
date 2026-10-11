CREATE TABLE [dbo].[vehicles] (
    [vehicle_id]     INT           IDENTITY (1, 1) NOT NULL,
    [plate]          VARCHAR (12)  NULL,
    [make]           VARCHAR (30)  NULL,
    [model]          VARCHAR (30)  NULL,
    [first_reg_year] INT           NULL,
    [fuel]           VARCHAR (10)  NULL,
    [updated_at]     DATETIME2 (0) DEFAULT (sysutcdatetime()) NULL,
    PRIMARY KEY CLUSTERED ([vehicle_id] ASC)
);


GO

