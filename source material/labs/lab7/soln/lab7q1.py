# Ramon Lawrence - 99999999

import mysql.connector

try:
    cnx = mysql.connector.connect(user='rlawrenc', password='test', host='cosc304.ok.ubc.ca', database='WorksOn')
    cursor = cnx.cursor()
    query = ("SELECT proj.pno, pname, dept.dno, dname, SUM(hours) as totalHours, COUNT(eno) as numEmployees"
             +" FROM dept INNER JOIN proj ON dept.dno=proj.dno INNER JOIN workson ON proj.pno = workson.pno"
             +" WHERE budget > 140000 "
             +" GROUP BY proj.pno, pname, dept.dno, dname"
             +" ORDER BY totalHours DESC")
             
    cursor.execute(query)
    print("pno\t pname \t\t dno \t dname \t\t hours \t numemp")
    for (pno, pname, dno, dname, hours, numemp) in cursor:
        print(pno,"\t",pname,"\t",dno,"\t",dname,"\t",hours,"\t",numemp)
    cursor.close()
except mysql.connector.Error as err:  
    print(err)
finally:
    cnx.close()