CREATE TABLE tblUsers(
	UserId int identity(1,1),
	UserName nvarchar(25),
	UserAccount nvarchar(30),
	UserPassword nvarchar(100),
	UserEmail nvarchar(30),
	UserPhone nvarchar(15),
	UserAdress nvarchar(50),
	UserState bit,
	PRIMARY KEY (UserId)


)