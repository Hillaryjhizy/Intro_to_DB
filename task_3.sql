# Open PowerShell or Command Prompt
# Navigate to the directory where your list_tables.sql file is located

cd C:\Users\IT\alx_be_python\Intro_to_DB\task_3.sql


# Execute the SQL script using MySQL
mysql -u root -p -h localhost < list_tables.sql

-- Use the alx_book_store database
USE alx_book_store;

-- List all tables in the database
SHOW TABLES;

