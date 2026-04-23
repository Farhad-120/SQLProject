Create database SchoolManagementDb
Go

USe SchoolManagementDb
Go 

Create table Students 
(
	StudentId Int Primary key Identity(1,1),
	Name Varchar(30) not null,
	Class Varchar(20) not null,
	RollNo Int,
	Age int,
);
Go

------------------Insert data------------

INSERT INTO Students VALUES('Karim','Ten',101,15)
INSERT INTO Students VALUES('Sharim','Six',102,14)
INSERT INTO Students VALUES('Samim','Ten',103,12)
INSERT INTO Students VALUES('Namim','Six',104,15)
INSERT INTO Students VALUES('Ramim','Ten',105,25)
INSERT INTO Students VALUES('Karim','Seven',106,115)
INSERT INTO Students VALUES('Stre','Ten',107,105)
INSERT INTO Students VALUES('Trp','Rpl',108,35)
INSERT INTO Students VALUES('Raka','Ten',109,15)


Select * from Students 


Go
------------Store procedure-----------------

--Add------
CREATE PROC AddStudent
		@Name Varchar(30),
		@Class Varchar(20),
		@RollNo Int,
		@Age int

AS

BEGIN

	Insert Into Students (Name,Class,RollNo,Age)Values(@Name,@Class,@RollNo,@Age)

END;
GO

---Store procedure data insert ------------

EXEC AddStudent 'Mamun','Twelve',114,35;
EXEC AddStudent 'Motamanun','Two',113,55;


Select * from Students 
Go


----------------Show data By store procedure---------------
Create proc GetAllStudents

AS
BEGIN
   SELECT * FROM Students 
END;
GO
EXEC GetAllStudents


Go
----------------Update data By store procedure---------------

Create proc UpdateStudents
        @Name Varchar(30),
		@RollNo Int,
		@Age int

AS

BEGIN
	Update Students
	SET RollNo=@RollNo
	where Name=@Name 
	     And Age=@Age 
	
	
END;
Go 

EXEC UpdateStudents

    @RollNo=110,
	 @Name='Raka',
	 @Age =15;

  EXEC UpdateStudents @Name = 'Alices', @RollNo = 101, @Age = 20;
