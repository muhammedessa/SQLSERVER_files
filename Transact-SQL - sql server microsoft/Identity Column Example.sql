

-- IDENTITY COLUMN EXAMPLE

CREATE TABLE IdentityColumnExample
(
  ProdID int IDENTITY(1,1)  NOT NULL,
  ProductName varchar(30) NOT NULL,
  Color varchar(10) NULL,
  Weight decimal(5,2)
)

INSERT INTO IdentityColumnExample
(ProductName,Color,Weight)
VALUES
('Bookshelf','White','22.4')

SELECT * FROM IdentityColumnExample

INSERT INTO IdentityColumnExample
(ProductName,Color,Weight)
VALUES
('External Drive','Silver','.3'),
('Backpack','Green','.5'),
('HardCase','Blue','1.4')
