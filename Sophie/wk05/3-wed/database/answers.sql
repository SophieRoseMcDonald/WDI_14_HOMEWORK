-- BASIC QUERIES
-- Unless otherwise stated, all queries should return all columns

-- Get all information about all authors
SELECT * FROM authors;
id |        name        |       nationality        | birth_year
----+--------------------+--------------------------+------------
1 | Cao Xueqin         | China                    |       1715
2 | J.K. Rowling       | United Kingdom           |       1965
3 | James Baldwin      | United States of America |       1924
4 | Jorge Luis Borges  | Argentina                |       1899
5 | Haruki Murakami    | Japan                    |       1949
6 | Milan Kundera      | Czechoslovakia           |       1929
7 | Albert Camus       | France                   |       1913
8 | George R.R. Martin | United States of America |       1945
(8 rows)

-- Get just the name and birth year of all authors
SELECT name, birth_year FROM authors;
        name        | birth_year
--------------------+------------
 Cao Xueqin         |       1715
 J.K. Rowling       |       1965
 James Baldwin      |       1924
 Jorge Luis Borges  |       1899
 Haruki Murakami    |       1949
 Milan Kundera      |       1929
 Albert Camus       |       1913
 George R.R. Martin |       1945
(8 rows)
-- Get all authors born in the 20th centruy or later
SELECT * FROM authors WHERE birth_year >= 2000;

-- Get all authors born in the USA
SELECT * FROM authors WHERE nationality = 'United States of America';
 id |        name        |       nationality        | birth_year
----+--------------------+--------------------------+------------
  3 | James Baldwin      | United States of America |       1924
  8 | George R.R. Martin | United States of America |       1945
(2 rows)
-- Get all books published on 1985
SELECT * FROM books WHERE publication_date = 1985;
 id |              title              | publication_date | author_id
----+---------------------------------+------------------+-----------
 26 | The Evidence of Things Not Seen |             1985 |         3
 27 | The Price of the Ticket         |             1985 |         3
(2 rows)
-- Get all books published before 1989
SELECT * FROM books WHERE publication_date <= 1989;
-- Get just the title of all books.
SELECT title FROM books;
                      title
--------------------------------------------------
 Dream of the Red Chamber
 Harry Potter and the Philosophers Stone
 Harry Potter and the Chamber of Secrets
 Harry Potter and the Prisoner of Azkaban
 Harry Potter and the Goblet of Fire
 Harry Potter and the Order of the Phoenix
 Harry Potter and the Half-Blood Prince
 Harry Potter and the Deathly Hallows
 The Casual Vacancy
 Go Tell It on the Mountain
-- Get just the year that 'A Dance with Dragons' was published
  -- Cry when you realize how long it's been
  SELECT publication_date FROM books WHERE title = 'A Dance with Dragons';
   publication_date
  ------------------
               2011
  (1 row)
-- Get all books which have `the` somewhere in their title (hint, look up 'LIKE/ILIKE')
SELECT * FROM books WHERE title LIKE '%the%';
 id |                   title                   | publication_date | author_id
----+-------------------------------------------+------------------+-----------
  1 | Dream of the Red Chamber                  |             1750 |         1
  2 | Harry Potter and the Philosophers Stone   |             1997 |         2
  3 | Harry Potter and the Chamber of Secrets   |             1998 |         2
-- Add yourself as an author
INSERT INTO authors(name, nationality, birth_year) VALUES ('Sophie McDonald', 'Australia', 1990);
-- Add two books that you'd like to write (you can hard-code your id as the author id)
INSERT INTO books(title, publication_date) VALUES ('When pigs fly', '2017');
INSERT INTO books(title, publication_date, author_id) VALUES ('How i became a ruby dev', '2018', '9');
-- Update one of your books to have a new title

-- Delete your books

-- Delete your author entry
