USE People;

-- The DROP keyworld 'deletes' an entire table.

DROP table Users;

/* INT means the column is an integer. UNSIGNED means the value is positive. NOT
NULL means that it is required. AUTO_INCREMENT means 'please supply a user id if
I don't. PRIMARY KEY means that we will be using the column alot, and tells the
database to make it easier and more efficient to parse. INDEX means that we will
be using WHERE clauses alot on this column.*/

CREATE table Users(
    user_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(128),
    email VARCHAR(128),
    PRIMARY KEY(user_id),
    INDEX(email)
)

/* INDEXES
    - HASHES used for exact matches
    - TREE used for sorting and prefix matches
MySQL INDEX TYPES
    - PRIMARY KEY very little space, exact match, requires no duplicates,
    extremely fast for integer fields
    - INDEX good for individual row lookup and sorting/grouping results - works
    best with exact matches or prefix lookups - can suggest HASH or BTREE
