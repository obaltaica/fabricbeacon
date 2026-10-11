CREATE TABLE [dbo].[customers] (
    [customer_id] INT           IDENTITY (1, 1) NOT NULL,
    [first_name]  VARCHAR (50)  NULL,
    [last_name]   VARCHAR (50)  NULL,
    [email]       VARCHAR (120) NULL,
    [phone]       VARCHAR (30)  NULL,
    [birth_date]  DATE          NULL,
    [postal_code] VARCHAR (10)  NULL,
    [country]     CHAR (2)      NULL,
    [segment]     VARCHAR (20)  NULL,
    [updated_at]  DATETIME2 (0) DEFAULT (sysutcdatetime()) NULL,
    PRIMARY KEY CLUSTERED ([customer_id] ASC)
);


GO

