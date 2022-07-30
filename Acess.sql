-- new user w/pw --

CREATE USER jlouis 
IDENTIFIED BY 'Welcome';

CREATE USER Eric;

CREATE USER 
bob@johnnytech.com 
IDENTIFIED BY '1234';

CREATE USER 
mark@johnnytech.com 
IDENTIFIED BY '5678';

DROP USER 
mark@johnnytech.com;

DROP USER moon_app;

SELECT * FROM mysql.user;

--- create new ---
-- 1: web / desktop application
CREATE USER moon_app IDENTIFIED BY '1$#45';

GRANT SELECT, INSERT, UPDATE, DELETE, EXECUTE
ON sql_store.*
TO moon_app;

-- 2: admin
GRANT ALL ON *.*
TO johnny;

SHOW GRANTS FOR johnny;
SHOW GRANTS;

GRANT CREATE VIEW
ON sql_store.*
TO moon_app;

REVOKE CREATE VIEW
ON sql_store.*
FROM moon_app;