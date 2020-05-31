

Create table TestTablePK
(
ProdID smallint   not null, 
FirstName varchar(30) not null, 
LastName varchar(30) not null, 
Color varchar(30) Default 'White' not null, 
CONSTRAINT PK_TestTablePK_LastName PRIMARY KEY  CLUSTERED (LastName)
)


Create table TestTablePK2
(
FirstName varchar(30) not null, 
LastName varchar(30) not null, 
Color varchar(30) Default 'White' not null, 
  PRIMARY KEY CLUSTERED (LastName),
  City varchar(30) null
)


INSERT INTO TestTablePK2 (FirstName,LastName ) 
VALUES ( 'Muhammed','Essa'),( 'Ahmed','Essa');



Create table TestTablePK3
(
FirstName varchar(30) not null, 
LastName varchar(30) not null, 
Color varchar(30) Default 'White' not null, 
CONSTRAINT PK_TestTablePK_FirstName_LastName  
PRIMARY KEY CLUSTERED (FirstName,LastName),
  City varchar(30) null
)






Create table TableWithPK1
(
PID smallint IDENTITY (12,3) not null, 
ProductName varchar(30) not null, 
Color varchar(30) Default 'Yellow' not null, 
CONSTRAINT PK_TestPK_PID PRIMARY KEY  CLUSTERED (PID)
)


Create table TableWithFK
(
PID smallint  not null, 
Car varchar(30)  null, 
Color varchar(30) Default 'Yellow' not null, 
CONSTRAINT FK_TestFK_PID 
FOREIGN KEY (PID) REFERENCES TableWithPK(PID)
)


SELecT * FROM TableWithPK

SELecT * FROM TableWithFK

BEGIN TRANSACTION 
   INSERT INTO TableWithPK ( ProductName ,Color) 
   VALUES ( 'Muhammed','Blue');

   INSERT INTO TableWithFK VALUES (1,'Ahmed' ,'Read')  ;
COMMIT