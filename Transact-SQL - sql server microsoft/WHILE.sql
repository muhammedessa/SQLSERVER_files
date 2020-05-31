
DECLARE @LoopCounter INT = 1
WHILE ( @LoopCounter <= 4)
BEGIN
    PRINT @LoopCounter  
    SET @LoopCounter  = @LoopCounter  + 1
END




---WHILE loop with BREAK statement

DECLARE @LoopCounter INT = 1
WHILE ( @LoopCounter <= 4)
BEGIN
    PRINT @LoopCounter  
    IF(@LoopCounter = 2)
        BREAK
    SET @LoopCounter  = @LoopCounter  + 1
END
PRINT 'Statement after while loop'


--WHILE loop with CONTINUE statement

DECLARE @LoopCounter INT = 0
    WHILE ( @LoopCounter <= 3)
    BEGIN
        SET @LoopCounter  = @LoopCounter  + 1 
 
        IF(@LoopCounter = 2)
          CONTINUE
  
        PRINT @LoopCounter 
    END
    PRINT 'Statement after while loop'







WHILE (SELECT AVG(ListPrice) FROM Production.Product) < $300  
BEGIN  
   UPDATE Production.Product  
      SET ListPrice = ListPrice * 2  
   SELECT MAX(ListPrice) FROM Production.Product  
   IF (SELECT MAX(ListPrice) FROM Production.Product) > $500  
      BREAK  
   ELSE  
      CONTINUE  
END  
PRINT 'Too much for the market to Milk'; 