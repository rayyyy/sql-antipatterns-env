CREATE TABLE Bugs (
  bug_id      SERIAL PRIMARY KEY,
  summary     VARCHAR(80),
  description TEXT,
  ts_bugtext  TSVECTOR
  -- 他の列. . .
);
