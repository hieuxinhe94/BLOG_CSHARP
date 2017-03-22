CREATE TABLE tblVisitor(
	VisitorId int identity(1,1),
	VisitorIp nvarchar(10),
	VisitorDayCreate nvarchar(30),
	PRIMARY KEY (VisitorId)
)