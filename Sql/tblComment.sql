
CREATE TABLE [dbo].[tblComments](
	[CmtId] [int] IDENTITY(1,1) NOT NULL,
	[CmtName] [nvarchar](200) NOT NULL,
	[CmtContent] [nvarchar](500) NOT NULL,
	[CmtPostId] [int]  not null ,
	[CmtUserId] [int] not null,
	[CmtState] [bit] NOT NULL,
PRIMARY KEY  
(
	[CmtId]
)


