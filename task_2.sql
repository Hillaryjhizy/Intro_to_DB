import mysql.connector
from mysql.connector import Error

def create_server_connection(host_name, user_name, user_password, db_name):
    connection = None
    try:
        connection = mysql.connector.connect(
            host=host_name,
            user=user_name,
            passwd=user_password,
            database=db_name
        )
        print("MySQL Server connection successful")
    except Error as e:
        print(f"The error '{e}' occurred")
    return connection

def execute_script_from_file(connection, file_path):
    cursor = connection.cursor()
    try:
        with open(file_path, 'r') as file:
            script = file.read()
            cursor.execute(script, multi=True)
        print("Script executed successfully!")
    except Error as e:
        print(f"The error '{e}' occurred")

# Connection details
host_name = "localhost"
user_name = "root"
user_password = "S0lomon_Busayo@1997"
db_name = "alx_book_store"

# Connect to MySQL Server
connection = create_server_connection(host_name, user_name, user_password, db_name)

# Execute the SQL script
script_path = "task_2.sql"
execute_script_from_file(connection, script_path)

# Close the connection
if connection.is_connected():
    connection.close()
    print("MySQL connection is closed")
