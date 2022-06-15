CREATE TABLE Bugs_2009 (
  -- 他の列. . .
  date_reported DATE CHECK (EXTRACT(YEAR FROM date_reported) = 2009)
);

CREATE TABLE Bugs_2010 (
  -- 他の列. . .
  date_reported DATE CHECK (EXTRACT(YEAR FROM date_reported) = 2010)
);
