
USE DBBookLending
GO

CREATE TABLE dbo.MemberBase
(MemberID nchar(10) PRIMARY KEY NOT NULL,
MemberName Varchar(max) null,
MemberPhone Varchar(20) null,
MemberBalance money null)
GO
create table dbo.BookBase
(BookID nchar(10) primary key not null,
 BookName varchar(max) null,
 BookClassID varchar(10) not null,
 BookPrice money null
)
go
create table dbo.BookOrder
(orderID nchar(10) primary key not null,
BookID nchar(10) not null,
MemberID nchar(10) not null,
operator nchar(10) null,
Bdata time null,
adress nchar(10) null,
foreign key (BookID)  references dbo.BookBase(BookID),
foreign key (MemberID)  references dbo.MemberBase(MemberID)
)
go
