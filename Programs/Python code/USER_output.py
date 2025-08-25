import mysql.connector

conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="Kaushal982939@",
    database="university"
)

crs = conn.cursor()

# Drop result table if it exists
crs.execute("DROP TABLE IF EXISTS result")

# Create result table with only required fields
crs.execute("""
    CREATE TABLE result AS
    SELECT t.teacher_id, t.age, c.course_id
    FROM teachers t
    INNER JOIN course c ON t.teacher_id = c.teacher_id
    WHERE CAST(t.age AS UNSIGNED) > 30
""")

# View the results
crs.execute("SELECT * FROM result")
for row in crs:
    print(row)

conn.close()
