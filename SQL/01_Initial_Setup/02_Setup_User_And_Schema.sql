-- drop schema <username>
-- drop user <username>
CREATE SCHEMA <username>
GO

CREATE USER <username>
	FOR LOGIN <username>
	WITH DEFAULT_SCHEMA = [dbo]
GO

GRANT CONTROL ON SCHEMA::<username> TO <username>
GO
GRANT CREATE TABLE TO <username>
GO
GRANT CREATE VIEW TO <username>
GO
GRANT CREATE PROCEDURE TO <username>
GO
GRANT CREATE TYPE TO <username>
GO
GRANT CREATE FUNCTION TO <username>
GO
GRANT CREATE DEFAULT TO <username>
GO
