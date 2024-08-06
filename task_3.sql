
-- import mysql.connector
-- from mysql.connector import Error

-- def create_server_connection(host_name, user_name, user_password, db_name):
--     connection = None
--     try:
--         connection = mysql.connector.connect(
--             host= "localhost",
--             user=u "root",
--             passwd= "S0lomon_Busayo@1997",
--             database= "lx_book_store"
--         )
--         print("MySQL Server connection successful")
--     except Error as e:
--         print(f"The error '{e}' occurred")
--     return connection

-- def list_tables(connection):
--     cursor = connection.cursor()
--     try:
--         cursor.execute("SHOW TABLES")
--         tables = cursor.fetchall()
--         if tables:
--             print("Tables in the database:")
--             for table in tables:
--                 print(table[0])
--         else:
--             print("No tables found in the database.")
--     except Error as err:
--         print(f"The error '{err}' occurred")


-- # Connect to MySQL Server
-- connection = create_server_connection(host_name, user_name, user_password, db_name)

-- # List all tables
-- if connection:
--     list_tables(connection)
--     connection.close()
--     print("MySQL connection is closed")
-- else:
--     print("Failed to connect to the database.")

-- Use the alx_book_store database
USE alx_book_store;

-- List all tables in the database
SHOW TABLES;

