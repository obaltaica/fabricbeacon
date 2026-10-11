CREATE TABLE [dbo].[policies] (
    [policy_id]      INT             IDENTITY (1000, 1) NOT NULL,
    [customer_id]    INT             NULL,
    [vehicle_id]     INT             NULL,
    [product]        VARCHAR (20)    NULL,
    [start_date]     DATE            NULL,
    [end_date]       DATE            NULL,
    [annual_premium] DECIMAL (10, 2) NULL,
    [status]         VARCHAR (10)    NULL,
    [updated_at]     DATETIME2 (0)   DEFAULT (sysutcdatetime()) NULL,
    PRIMARY KEY CLUSTERED ([policy_id] ASC)
);


GO

