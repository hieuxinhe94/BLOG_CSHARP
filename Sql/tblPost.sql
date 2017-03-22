CREATE TABLE tblPost( 
	PostId int identity(1,1),
	PostTitle text,
	PostImg nvarchar(250),
	PostDescription text,
	PostContent nvarchar(max),
	PostAuthorId int,
	PostDayCreate Datetime,
	PostStar int,
	PostCategoryId int,
	PostState bit,
	Primary key (PostId)
)