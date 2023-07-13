CREATE DATABASE TestStageDB;

CREATE TABLE exemple(
  id UUID,
  text TEXT,
  vector pg_catalog.pgvector(1536)
  PRIMARY KEY (id)
);

INSERT INTO exemple (id, text, vector)
VALUES ('uuid1', 'Le premier texte.', '{0.1, 0.2, 0.3, 0.4, 0.5}')

INSERT INTO exemple (id, text, vector)
VALUES ('uuid2', 'Le premier texte.', '{0.6, 0.7, 0.8, 0.9, 1.0}')