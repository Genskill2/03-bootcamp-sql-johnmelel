SELECT distinct a.title 
FROM books a, books_subjects b 
WHERE b.book IN (SELECT b.book FROM subjects s, books_subjects b WHERE b.subject=s.id AND s.name in ("Politics","Technology")) AND b.book = a.id;
