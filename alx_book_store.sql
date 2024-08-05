
CREATE DATABASE IF NOT EXISTS alx_book_store;
USE alx_book_store;


CREATE TABLE IF NOT EXISTS Authors (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    author_name VARCHAR(215) NOT NULL
);


CREATE TABLE IF NOT EXISTS Books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(130) NOT NULL,
    author_id INT,
    price DOUBLE NOT NULL,
    publication_date DATE,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

CREATE TABLE IF NOT EXISTS Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(215) NOT NULL,
    email VARCHAR(215) NOT NULL,
    address TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_date DATE NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE IF NOT EXISTS Order_Details (
    orderdetailid INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    book_id INT,
    quantity DOUBLE NOT NULL,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);




-- import mysql.connector
-- -- from mysql.connector import Error

-- def create_connection(host_name, user_name, user_password, db_name):
--     connection = None
--     try:
--         connection = mysql.connector.connect(
--             host = "localhost",
--             user = "root",
--             password = "S0lomon_Busayo@1997",
--         )
--         print("Connection to MySQL DB successful")
--     except Error as e:
--         print(f"The error '{e}' occurred")
--     return connection

-- def execute_query(connection, query):
--     cursor = connection.cursor()
--     try:
--         cursor.execute(query)
--         connection.commit()
--         print("Query executed successfully")
--     except Error as e:
--         print(f"The error '{e}' occurred")

-- def read_query(connection, query):
--     cursor = connection.cursor()
--     result = None
--     try:
--         cursor.execute(query)
--         result = cursor.fetchall()
--         return result
--     except Error as e:
--         print(f"The error '{e}' occurred")

-- # Establishing the connection
-- connection = create_connection("your_host", "your_username", "your_password", "alx_book_store")

-- # Example of inserting data into the Authors table
-- create_author_query = """
-- INSERT INTO Authors (author_name) VALUES
-- ('J.K. Rowling'),
-- ('George R.R. Martin'),
-- ('J.R.R. Tolkien');
-- """
-- execute_query(connection, create_author_query)

-- # Example of reading data from the Authors table
-- select_authors_query = "SELECT * FROM Authors"
-- authors = read_query(connection, select_authors_query)

-- for author in authors:
--     print(author)


-- import mysql.connector


-- def create_connection(host_name, user_name, user_password, db_name):
-- mydatabase =mysql.connector.connect(
--     try:
--     host = "localhost",
--     user = "root",
--     password = "S0lomon_Busayo@1997"
-- )
-- mycursor = mydatabase.cursor()
-- mycursor.execute("SHOW DATABASE")
-- for i in mycursor
--     print(i)
    