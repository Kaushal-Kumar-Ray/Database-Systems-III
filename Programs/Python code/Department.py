##department.py
import mysql.connector
conn=mysql.connector.connect(
    host="localhost",
    user="root",
    database="university",
    password="Kaushal982939@")
crs=conn.cursor()
crs.execute("create table if not exists department(department_id varchar(15), department_name varchar(25), HOD varchar(15))")
crs.execute("insert into department value('1', 'B.Tech','Pranav Sir'),('2','B.Tech AI ML', 'Praful Sir'),('3', 'BCA', 'Siddharth Sir')")

crs.execute("commit")
crs.execute("select * from department")
for rows in crs:
    print(rows)
conn.close()