DROP TABLE IF EXISTS albums;
DROP TABLE IF EXISTS artists;

CREATE TABLE artists (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE albums (
  id SERIAL4 PRIMARY KEY,
  title VARCHAR(255),
  genre VARCHAR(255),
  artist_id INT4 REFERENCES artists(id) ON DELETE CASCADE
);

ALTER TABLE artists ADD COLUMN created_at TIMESTAMP;
ALTER TABLE artists ALTER COLUMN created_at SET DEFAULT now();
ALTER TABLE albums ADD COLUMN created_at TIMESTAMP;
ALTER TABLE albums ALTER COLUMN created_at SET DEFAULT now();
