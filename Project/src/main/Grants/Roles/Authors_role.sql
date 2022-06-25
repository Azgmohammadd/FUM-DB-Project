CREATE ROLE Authors_role;

GRANT SELECT, CREATE, UPDATE, DELETE ON fum_database.PUB_AUT TO Authors_role;

GRANT SELECT, CREATE, UPDATE, DELETE ON fum_database.AUT_SUM TO Authors_role;
