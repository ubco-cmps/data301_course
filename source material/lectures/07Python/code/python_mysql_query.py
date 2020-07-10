import mysql.connector

try:
    cnx = mysql.connector.connect(user='rlawrenc', password='test', host='cosc304.ok.ubc.ca', database='WorksOn')
    cursor = cnx.cursor()

    query = ("SELECT eno, ename, salary FROM emp WHERE title > %s and salary < %s")                
    cursor.execute(query, ('EE', 50000))

    for (eno, ename, salary) in cursor:
        print(eno, ename, salary)
    
    # Alternate way to process row (as a tuple)
    #for r in cursor:
    #    print(r[0],r[1],r[2]])
    cursor.close()
except mysql.connector.Error as err:  
    print(err)
finally:
    cnx.close()