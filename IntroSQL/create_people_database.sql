/* Comments in sql are created with a -- (single line). For multiline comments,
start the comments with /* and ends with */
/* Semicolons end one statement in sql, without themm, there will be error
message. */

CREATE database People DEFAULT CHARACTER SET utf8;

/* Creates a table in the people database with the the folling columns:
        - name
        - email
The VARCHAR function limits the character length of the columns to 128
characters. The USE statement selects a database to create the table into. */

USE People;

CREATE table Users(
    name VARCHAR(128),
    email VARCHAR(128)
);

/* Inserting rows into a table uses the keywords INSERT INTO. The VALUES
keyword describes the info you want to insert. */

INSERT INTO Users(name, email) VALUES('Chuck', 'csev@umich.edu');
INSERT INTO Users(name, email) VALUES('Somesh', 'somesh@umich.edu');
INSERT INTO Users(name, email) VALUES('Caitlin', 'cait@umich.edu');
INSERT INTO Users(name, email) VALUES('Ted', 'ted@umich.edu');
INSERT INTO Users(name, email) VALUES('Sally', 'sally@umich.edu');

/* Deleting a row starts with the DELETE keyword followed by FROM. FROM
specifies which table to delete from. There is also a WHERE keyword which is
like an 'if' statement. */

DELETE FROM Users WHERE email='ted@umich.edu'

-- Updating rows uses the UPDATE keyword.

UPDATE Users SET name='Charles' WHERE email='csev@umich.edu'

/* SELECT is a statement that says 'read a table'. 'SELECT *' statement returns
all the columns in the selected table. The WHERE statement can select specific
rows. Selecting a row which does not exist will not return a error. Instead,
nothing will be returned. */

SELECT * FROM Users;
SELECT * FROM Users WHERE email='csev@umich.edu';

-- ORDER BY statement sorts the rows by a chosen column.

SELECT * FROM Users ORDER BY email;

-- The next statement selects all people with 'e' in their name.

SELECT * FROM Users WHERE name LIKE '%e%';

/* The LIMIT keyword can request the first 'n' rows or the first 'n' rows after
some starting rows. The first row is zero, not 1. The next statement selects the
first two rows. */

SELECT * FROM Users DESC Limit 2;

-- The next statement select rows 2-4, inclusive

SELECT * FROM Users Limit 2, 4;

/* The COUNT function returns an integer describing the amount of rows. A WHERE
statement can be used to achieve this: 'return the number of rows whose emails
are...'. */

SELECT COUNT(*) FROM Users;

-- The next statment counts the number of rows with the email 'csev@umich.edu'.

SELECT COUNT(*) FROM Users WHERE email='csev@umich.edu';
