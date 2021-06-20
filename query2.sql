--SELECT a.title, b.name  
--FROM books a, publisher b
--WHERE a.publisher.country = 'UK';

SELECT books.title, publisher.name 
FROM nooks INNER JOIN publisher ON books.publisher = publisher.id AND publisher.country = 'UK';
