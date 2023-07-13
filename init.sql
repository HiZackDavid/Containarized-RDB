CREATE DATABASE TestStageDB;

CREATE EXTENSION IF NOT EXISTS vector;

CREATE TABLE exemple(
  id UUID PRIMARY KEY,
  text TEXT,
  vector vector(1536)
);

CREATE USER ialab WITH PASSWORD 'stage2023';

GRANT CONNECT ON DATABASE TestStageDB TO ialab;
GRANT SELECT ON ALL TABLES IN SCHEMA public TO ialab;

INSERT INTO exemple (id, text, vector)
VALUES ('123e4567-e89b-42d3-a456-556642440000', 'Le premier texte.', '[0.1, 0.2, 0.3, 0.4, 0.5]');

INSERT INTO exemple (id, text, vector)
VALUES ('ba6eb330-4f7f-11eb-a2fb-67c34e9ac07c', 'Le premier texte.', '[0.6, 0.7, 0.8, 0.9, 1.0]');