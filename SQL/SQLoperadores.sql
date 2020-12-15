--OPERADORES ARITMEICOS 
DECLARE @num1 decimal(9,2) = 5
DECLARE @num2 decimal(9,2) = 3
DECLARE @result decimal(9,2)

SET @result = @num1 + @num2
PRINT @result

SET @result = @num1 - @num2
PRINT @result

SET @result = @num1 * @num2
PRINT @result

SET @result = @num1 / @num2
PRINT @result

SET @result = @num1 % @num2 --el resto
PRINT @result


DECLARE @char1 varchar(10) = 'Hola'
DECLARE @char2 varchar(10) = 'Holo'
DECLARE @result2 varchar(10) 

SET @result2 = @char1 +' ' + @char2
PRINT @result2

--OPERADORES COMPARACION
/*
>  MAYOR
<  MENOR
=  IGUAL
<> DISTINTO

*/

IF @num2 <> @num1
BEGIN
	PRINT 'SI DISTINTO '
END
ELSE
BEGIN
	PRINT 'NO ES DISTINTO'
END

IF @char1 > @char2
BEGIN
	PRINT 'SI mayor '
END
ELSE
BEGIN
	PRINT 'NO mayor'
END