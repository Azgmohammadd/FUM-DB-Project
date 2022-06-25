CREATE ROLE Publishers_role;

GRANT SELECT, CREATE, UPDATE, DELETE ON fum_database.PUB_INFO TO Publishers_role;

GRANT SELECT, CREATE, UPDATE, DELETE ON fum_database.PUB_SUM TO Publishers_role;

GRANT SELECT, CREATE, UPDATE, DELETE ON fum_database.BOOK_PUB TO Publishers_role;
