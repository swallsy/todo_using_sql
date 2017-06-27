createdb todolist_database;
psql todolist_database;
CREATE TABLE todos (id SERIAL PRIMARY KEY, title VARCHAR(255) NOT NULL, details VARCHAR, priority INTEGER NOT NULL DEFAULT 1, created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL, completed_at TIMESTAMP);

INSERT INTO todos (title, details, priority) VALUES ('do laundry', 'sort the whites and colors before washing', 1);

INSERT INTO todos (title, details, priority) VALUES ('clean car', 'buy new sponges', 3);

INSERT INTO todos (title, details, priority) VALUES ('vaccuum house', 'empty vaccuum before starting', 1);

INSERT INTO todos (title, details, priority) VALUES ('pay bills', 'check bank account first', 2);

INSERT INTO todos (title, details, priority, completed_at) VALUES ('clean the oven', 'make sure 3 hours to do so', 3, now());

SELECT * FROM todos WHERE completed_at IS NULL;

SELECT * FROM todos WHERE priority = 1;

UPDATE todos SET completed_at = now() WHERE id = 2;

DELETE FROM todos WHERE completed_at IS NOT NULL;
