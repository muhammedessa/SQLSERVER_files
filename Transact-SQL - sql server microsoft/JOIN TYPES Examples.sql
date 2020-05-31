 
SELECT TOP 5 * from Production.Product   

SELECT TOP 5 * from Production.ProductReview  



--  INNER JOIN
SELECT p.Name, pr.ProductReviewID
FROM Production.Product p 
JOIN Production.ProductReview pr
ON p.ProductID = pr.ProductID




--  RIGHT JOIN
SELECT p.Name, pr.ProductReviewID
FROM Production.Product p
RIGHT OUTER JOIN Production.ProductReview pr
ON p.ProductID = pr.ProductID




--  LEFT JOIN
SELECT p.Name, pr.ProductReviewID
FROM Production.Product p
LEFT OUTER JOIN Production.ProductReview pr
ON p.ProductID = pr.ProductID





SELECT p.Name, pr.ProductReviewID
FROM Production.Product p
CROSS JOIN Production.ProductReview pr
