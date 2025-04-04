BEGIN TRY

BEGIN TRAN;

-- CreateTable
CREATE TABLE [dbo].[Careers] (
    [id] NVARCHAR(1000) NOT NULL,
    [position] NVARCHAR(1000) NOT NULL,
    [positionCount] INT NOT NULL,
    [location] NVARCHAR(1000) NOT NULL,
    [shortdescription] TEXT NOT NULL,
    [createdAt] DATETIME2 NOT NULL CONSTRAINT [Careers_createdAt_df] DEFAULT CURRENT_TIMESTAMP,
    [updatedAt] DATETIME2 NOT NULL,
    CONSTRAINT [Careers_pkey] PRIMARY KEY CLUSTERED ([id])
);

COMMIT TRAN;

END TRY
BEGIN CATCH

IF @@TRANCOUNT > 0
BEGIN
    ROLLBACK TRAN;
END;
THROW

END CATCH
