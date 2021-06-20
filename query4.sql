SELECT distinct c.name 
FROM subjects c, books_subjects b 
WHERE b.subject IN ( SELECT b.subject FROM books_subjects b , books a WHERE a.id=b.book AND a.title="Atomic Habits") AND b.subject=c.id;
