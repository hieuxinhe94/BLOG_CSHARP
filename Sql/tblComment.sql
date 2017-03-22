
CREATE TABLE [dbo].[tblComments](
	[CmtId] [int] IDENTITY(1,1) NOT NULL,
	[CmtName] [nvarchar](200) NOT NULL,
	[CmtContent] [nvarchar](500) NOT NULL,
	[CmtState] [bit] NOT NULL,
PRIMARY KEY  
(
	[CmtId]
)


