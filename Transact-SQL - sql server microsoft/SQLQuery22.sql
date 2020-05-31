CREATE TABLE indentitycolumnsexample
(
ProdID tinyint IDENTITY(1,1) not null,
ProductName varchar(30) NOT NULL,
Color varchar(40) null,
weight decimal(5,2)
)


SELECT * FROM indentitycolumnsexample

INSERT INTO indentitycolumnsexample
(ProductName , Color , weight)
VALUES
('Macboo Pro','Grey',123.33)




CREATE TABLE indentitycolumnsexample2
(
ProdID UNIQUEIDENTIFIER DEFAULT newID() not null,
ProductName varchar(30) NOT NULL,
Color varchar(40) null,
weight decimal(5,2)
)

SELECT * FROM indentitycolumnsexample2


INSERT INTO indentitycolumnsexample2
(ProductName , Color , weight)
VALUES
('Macboo Pro','Grey',123.33),
('HP Pro','White',153.33),
('DELL Pro','Blue',623.33),
('Lenovo Pro','Green',823.33)