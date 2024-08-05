import mysql.connector
from mysql.connector import Error

def create_server_connection(host_name, user_name, user_password):
    connection = None
    try:
        connection = mysql.connector.connect(
            host=host_name,
            user=user_name,
            passwd=user_password
        )
        print("MySQL Server connection successful")
    except Error as e:
        print(f"The error '{e}' occurred")
    return connection

def create_database(connection, query):
    cursor = connection.cursor()
    try:
        cursor.execute(query)
        print("Database 'alx_book_store' created successfully!")
    except Error as e:
        if "1007 (HY000)" in str(e):
            print("Database 'alx_book_store' already exists.")
        else:
            print(f"The error '{e}' occurred")

# Connection details
host_name = "localhost"
user_name = "root"
user_password = "S0lomon_Busayo@1997"

# Connect to MySQL Server
connection = create_server_connection(host_name, user_name, user_password)

# Create database
create_database_query = "CREATE DATABASE alx_book_store"
create_database(connection, create_database_query)

# Close the connection
if connection.is_connected():
    connection.close()
    print("MySQL connection is closed")
