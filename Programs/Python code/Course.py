##course.py
import mysql.connector
conn=mysql.connector.connect(
    host="localhost",
    user="root",
    database="university",
    password="Kaushal982939@")
crs=conn.cursor()
crs.execute("create table if not exists course(course_id varchar(15), course_name varchar(25), teacher_id varchar(3), department_id varchar(10))")
crs.execute("insert into course value('201', 'DMS', '101', '1'),('202', 'AI', '102', '2'),('203', 'IOT', '103', '1'),('204', 'CN', '104', '3'),('205', 'ML', '105', '2')")

crs.execute("commit")
crs.execute("select * from course")
for rows in crs:
    print(rows)
conn.close()