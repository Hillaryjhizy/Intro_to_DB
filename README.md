Task 00: A Magical Database for Your Dream Online Bookstore Adventure! 



Tasks 01: Let's Build Your Database: Your Gateway to Data Adventure! 



Task 02: Create Your Magical Tables 



Task 03: List all the tables created 



Task 04: Full Description.
The instruction is to Write a script that prints the full description of the table books from the database alx_book_store in your MySQL server.

information_schema.columns: This table contains information about columns in all tables of all databases in the MySQL server.
COLUMN_NAME: The name of the column.
COLUMN_TYPE: The data type of the column.
IS_NULLABLE: Indicates whether the column can contain NULL values.
COLUMN_KEY: Indicates whether the column is a primary key, unique key, or index.
COLUMN_DEFAULT: The default value of the column.
EXTRA: Any additional information about the column (e.g., AUTO_INCREMENT).

# Open PowerShell or Command Prompt
# Navigate to the directory where your task_4.sql file is located
cd path\to\your\sql\file

# Execute the SQL script using MySQL
mysql -u root -p -h localhost alx_book_store < task_4.sql

This script will help you get a full description of the books table without using DESCRIBE or EXPLAIN.


Task 05: Populating Your Database with Your Very First Data 
The instruction is to Write a script that inserts a single row in the table customer (database alx_book_store) in your MySQL server.

To insert a single row into the customers table in the alx_book_store database, you can use an INSERT INTO statement. Here’s how you can write the SQL script to achieve this.

Steps to Execute the SQL Script
Save the script in a file named task_5.sql.
Open PowerShell or Command Prompt and navigate to the directory where task_5.sql is saved.
Execute the script using MySQL, passing the database name as an argument

# Open PowerShell or Command Prompt
# Navigate to the directory where your task_5.sql file is located
cd path\to\your\sql\file

# Execute the SQL script using MySQL
mysql -u root -p -h localhost alx_book_store < task_5.sql


Task 06:  Populating Your Database with Your More Data


.
