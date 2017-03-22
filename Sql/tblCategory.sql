
CREATE TABLE [dbo].[tblCategory](
	[CatId] [int] IDENTITY(1,1) NOT NULL,
	[CatUrl] [nvarchar](350) NULL,
	[CatName] [nvarchar](100) NULL,
	[CatState] [bit] NOT NULL,
PRIMARY KEY 
(
	[CatId]
)


