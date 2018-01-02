-- теоретически должен делать все правильно, однако почему-то косячит
DECLARE @xml xml;
SELECT @xml = x FROM OPENROWSET(BULK 'C:/Users/User/Desktop/DB/Misha/module3/part2/XMLFile1.xml', SINGLE_BLOB) AS TEMP(x);
SELECT @xml.query(' for $book in /Books/Book
where contains(string($book/Price[1]), string(min($book/@Price)))
return $book/Title
');
GO
