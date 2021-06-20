CREATE TABLE publisher(
        id integer PRIMARY KEY,
        name text,
        country text
);

CREATE TABLE books(
        id integer PRIMARY KEY,
        title text,
        publisher integer references publisher(id)
);

CREATE TABLE subjects(
        id integer PRIMARY KEY,
        name text
);

CREATE TABLE books_subjects(
        book integer references books(id),
        subject integer references subjects(id)
);
