CREATE TABLE IF NOT EXISTS employees (
  emp_id INTEGER PRIMARY KEY,
  first_name TEXT NOT NULL,
  last_name TEXT,
  email TEXT UNIQUE,
  department TEXT,
  salary REAL,
  joining_date DATE DEFAULT (DATE('now'))
);
-- INSERTs
INSERT INTO employees (emp_id, first_name, last_name, email, department, salary, joining_date)
VALUES (1, 'siddu', 'Sharma', 'rahul.sharma@example.com', 'IT', 55000, '2023-05-10');

INSERT INTO employees (emp_id, first_name, last_name, email, department, salary)
VALUES (2, 'Anita', NULL, 'anita@example.com', 'HR', NULL);

INSERT INTO employees (emp_id, first_name, last_name, email, department, salary)
VALUES (3, 'manish', 'Patel', 'vikram.patel@example.com', 'Finance', 60000);

-- UPDATEs
UPDATE employees SET salary = 58000 WHERE emp_id = 2;
UPDATE employees SET department = 'Unassigned' WHERE salary IS NULL;

-- DELETEs
DELETE FROM employees WHERE emp_id = 1;
DELETE FROM employees WHERE last_name IS NULL;