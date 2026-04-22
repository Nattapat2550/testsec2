-- Postgres only runs /docker-entrypoint-initdb.d/ scripts on FIRST volume init.
-- Re-running `docker compose up` with an existing pgdata volume will NOT re-seed;
-- delete the volume with `docker compose down -v` if you want a fresh seed.
CREATE TABLE IF NOT EXISTS tasks (
  id SERIAL PRIMARY KEY,
  title TEXT NOT NULL
);

INSERT INTO tasks (title) VALUES ('seed task — delete me after confirming /tasks works');
