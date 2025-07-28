##table1_students.py
import mysql.connector
conn=mysql.connector.connect(
    host="localhost",
    user="root",
    database="university",
    password="Kaushal982939@")
crs=conn.cursor()
crs.execute("create table if not exists teachers(teacher_id varchar(15), name varchar(25), age varchar(3), department_id varchar(10))")
crs.execute("insert into teachers value('101', 'Pranav Sir', '35', '1'),('102', 'Praful Sir', '28', '2'),('103', 'Siddharth Sir', '26', '1'),('104', 'Shambhu Sir', '42', '3'),('105', 'Ritu maam', '32', '2')")
#crs.execute("insert into teachers (prn) values('2402052410000')")
crs.execute("commit")
crs.execute("select * from teachers")
for rows in crs:
    print(rows)
conn.close()