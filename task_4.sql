-- Select the full description of the table books from information_schema.columns
SELECT 
    COLUMN_NAME, 
    COLUMN_TYPE, 
    IS_NULLABLE, 
    COLUMN_KEY, 
    COLUMN_DEFAULT, 
    EXTRA
FROM 
    information_schema.columns
WHERE 
    table_schema = 'alx_book_store' 
    AND table_name = 'books';
