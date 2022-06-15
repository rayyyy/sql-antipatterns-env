   CREATE TABLE Bugs (
     bug_id        SERIAL PRIMARY KEY,
     date_reported DATE NOT NULL,
     summary       VARCHAR(80) NOT NULL,
     status        VARCHAR(10) NOT NULL,
     hours         NUMERIC(9,2),
①   INDEX (bug_id),
②   INDEX (summary),
③   INDEX (hours),
④   INDEX (bug_id, date_reported, status)
   );
