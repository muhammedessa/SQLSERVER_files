 
CREATE TABLE CreateTablePK
(
 FirstName varchar(25) not null,
 LastName varchar(25) not null,
 CONSTRAINT PK_CreateTablePK_LastName PRIMARY KEY CLUSTERED (LastName),
 City	varchar(15) null
)


DROP TABLE CreateTablePK

CREATE TABLE CreateTablePK
(
 FirstName varchar(25) not null,
 LastName varchar(25) not null
 PRIMARY KEY CLUSTERED (LastName),
 City	varchar(15) null
)


INSERT INTO CreateTablePK
VALUES
('Bob','Smith','Atlanta'),
('Jack','Smith','Atlanta')


DROP TABLE CreateTablePK

CREATE TABLE CreateTablePK
(
 FirstName varchar(25) not null,
 LastName varchar(25) not null,
 City	varchar(15) null
 CONSTRAINT PK_CreateTablePK_LastName_FirstName PRIMARY KEY CLUSTERED (LastName,FirstName)
)


INSERT INTO CreateTablePK
VALUES
('Bob','Smith','Atlanta'),
('Jack','Smith','Atlanta')

SELECT * FROM CreateTablePK


CREATE TABLE TestPK
(
  ProdID int IDENTITY(1,1)  NOT NULL,
  ProductName varchar(30) NOT NULL,
  Color varchar(10) DEFAULT 'Black' NULL
   CONSTRAINT PK_TestPK_ProdID PRIMARY KEY CLUSTERED (ProdID)
)

CREATE TABLE TestFK
(
  ProdID int IDENTITY(1,1)  NOT NULL,
  Origin varchar(30) NULL
  CONSTRAINT FK_ProdID_TestPK_ProdID FOREIGN KEY (ProdID) REFERENCES TestPK(ProdID)
)

INSERT TestPK
(ProductName)
VALUES
('Shoes')

select * from TestPK
