CREATE USER ruby IDENTIFIED BY ruby;
GRANT CREATE ANY PROCEDURE TO ruby;
GRANT CREATE ANY INDEX TO ruby;
GRANT CREATE ANY TABLE TO ruby;
GRANT CONNECT TO ruby;
GRANT UNLIMITED TABLESPACE TO ruby;
GRANT SELECT ANY TABLE to ruby;
GRANT INSERT ANY TABLE to ruby;
GRANT ALTER ANY TABLE to ruby;
GRANT EXECUTE ANY PROCEDURE to ruby;
GRANT DEBUG ANY PROCEDURE to ruby;

CREATE OR REPLACE FUNCTION ruby.betwnstr (
   string_in   IN   VARCHAR2,
   start_in    IN   INTEGER,
   end_in      IN   INTEGER
)
   RETURN VARCHAR2
IS
   l_start PLS_INTEGER := start_in;
BEGIN
   IF l_start = 0
   THEN
      l_start := 1;
   END IF;
   RETURN (SUBSTR (string_in, l_start, end_in - l_start + 1));
END;
/

CREATE TABLE ruby.rooms (
  room_key NUMBER PRIMARY KEY,
  name VARCHAR2(100)
)
/

CREATE TABLE ruby.room_contents (
  contents_key NUMBER PRIMARY KEY,
  room_key NUMBER, name VARCHAR2(100)
)
/

ALTER TABLE ruby.room_contents ADD CONSTRAINT
  fk_rooms FOREIGN KEY (room_key)
  REFERENCES ruby.rooms (room_key)
/

CREATE OR REPLACE PROCEDURE ruby.remove_rooms_by_name (
  name_in IN ruby.rooms.name%TYPE)
IS
BEGIN
  IF NAME_IN IS NULL
  THEN
    RAISE PROGRAM_ERROR;
  END IF;
  DELETE FROM ruby.rooms WHERE name LIKE name_in;
END;
/
