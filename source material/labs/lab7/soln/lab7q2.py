# Ramon Lawrence - 99999999
%matplotlib inline 

from scipy import stats
import numpy as np
import matplotlib.pyplot as plt
import mysql.connector

try:
    # Make a connection to the database
    cnx = mysql.connector.connect(user='rlawrenc', password='test', host='cosc304.ok.ubc.ca', database='WorksOn')
    
    # Create a cursor
    cursor = cnx.cursor()
    
    # Execute SQL query
    query = ("SELECT timestampdiff(YEAR,bdate, CURDATE()) as age, salary FROM emp WHERE salary > 20000 AND salary < 55000 ORDER BY salary DESC")             
    cursor.execute(query)
    
    # Print results and put data in lists for analysis
    print("age\t salary")
    ageList = []
    salaryList = []
    
    for (age, salary) in cursor:
        ageList.append(age)
        salaryList.append(float(salary))
        print(age,"\t",salary)
        
    # Close database cursor
    cursor.close()
    
    # Convert lists to arrays for linear regression
    x = np.array(ageList)
    y = np.array(salaryList)
    
    # Compute linear regression
    slope, intercept, r_value, p_value, slope_std_error = stats.linregress(x, y)

    # Output information on regression
    print("\nFormula:", slope,"* x +",intercept,"= y")
    predict_y = intercept + slope * x
    print("Predicted y-values:",predict_y)
    pred_error = y - predict_y
    print("Prediction error:",pred_error)
    degr_freedom = len(x) - 2
    residual_std_error = np.sqrt(np.sum(pred_error**2) / degr_freedom)
    print("Residual error:",residual_std_error)
    
    # Plot regression results
    plt.plot(x, y, 'o')
    plt.plot(x, predict_y, 'k-')
    plt.xlabel("Age")
    plt.ylabel("Salary")
    plt.show()

except mysql.connector.Error as err:  
    print(err)
finally:
    cnx.close()