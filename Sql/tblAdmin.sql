

CREATE TABLE [dbo].[tblAdmin](
	[AdminId] [int] IDENTITY(1,1) NOT NULL,
	[AdminName] [nvarchar](100) NOT NULL,
	[AdminAccount] [nvarchar](30) NOT NULL,
	[AdminPassword1] [nvarchar](150) NOT NULL,
	[AdminPassword2] [nvarchar](150) NOT NULL,
	[AdminState] [bit] NOT NULL,
PRIMARY KEY 
(
	[AdminId] 
)


