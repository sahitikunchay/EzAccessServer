import mysql.connector
from flask import Flask
from flask import request
import json
from flask import make_response

#request_platform = raw_input("Enter Platform of the Request - ")
#request_time = float(raw_input("Enter estimated time of completion for the request - "))

app = Flask(__name__)

@app.route('/getResource', methods=['POST'])
def func():
        if not request.json or not 'request_platform' in request.json:
                abort(405)
        
        request_platform = request.json['request_platform']
        request_time = int(request.json['request_time'])
        
        conn = mysql.connector.connect(
                user='root',
                password='',
                host='127.0.0.1',
                database='work')



        cur = conn.cursor()
        cur1 = conn.cursor()
        cur3 = conn.cursor()
        cur4 = conn.cursor()




        all_platforms = ['BOBJ','BOBJ4.1','Toad-TIC','D3','MSTR','EBI', 'PORTAL','MSAS','SSRS','GDSL']



        if (request_platform in all_platforms):

                query_avgWorkInHand = ("SELECT AVG(WORK_HAND) AS avg_work from work.resources")
                cur1.execute(query_avgWorkInHand)
                for (avg_work) in cur1:
                        avg_workInHand=str(avg_work[0])
                        #print avg_workInHand

                #query_maxExperience = ("SELECT MAX(EXPERIENCE) from resources")
                #max_experience = cur2.execute(query_maxExperience)

                query = ("SELECT EMPLOYEE_ID,EMPLOYEE_NAME,WORK_HAND FROM work.resources WHERE (SKILLSET ="+"'"+request_platform+"'"+" ) AND WORK_HAND<="+avg_workInHand+" ORDER BY EXPERIENCE DESC LIMIT 1")
                        #print query
                cur.execute(query)
                #for (EMPLOYEE_ID,EMPLOYEE_NAME) in cur:
                #	print("{}, {}".format(EMPLOYEE_ID, EMPLOYEE_NAME))
                for (x) in cur:
                        final_EmployeeId=str(x[0])
                        final_EmployeeName=str(x[1])
                        final_workHand=float(x[2])

                        #print ("Employee_ID =" + final_EmployeeId)
                        #print ("Employee_Name = "+final_EmployeeName)

                query_workHandUpdate=("UPDATE work.resources SET WORK_HAND = "+str(final_workHand+request_time)+ " WHERE EMPLOYEE_ID="+(final_EmployeeId))
                cur3.execute(query_workHandUpdate)

                query_eta=("SELECT WORK_HAND FROM work.resources WHERE EMPLOYEE_ID="+final_EmployeeId)
                cur4.execute(query_eta)
                for (x) in cur4:
                        final_ETA=str(x[0])
                        #print ("ETA = " + final_ETA) 	




                        
        else :
                #print ("Invalid Request Parameters provided !")
                pythonDictionary = {'error': 'Invalid Request Parameters provided'}
                dictionaryToJson = json.dumps(pythonDictionary)
                return dictionaryToJson




        #for (id, name, dept, salary) in cur:
         # print("{}, {}, {}, {}".format(id, name,dept,salary))






        cur.close()
        cur1.close()
        cur3.close()
        conn.close()
        pythonDictionary = {'eta': final_ETA, 'employeeID': final_EmployeeId, 'employeeName': final_EmployeeName}
        dictionaryToJson = json.dumps(pythonDictionary)
        return dictionaryToJson

#result = func(request_platform,request_time)

#print ("Employee_ID =" + result[1])
#print ("Employee_Name = "+result[2])
#print ("ETA ="+ result[0])

@app.errorhandler(404)
def not_found(error):
    return make_response(jsonify({'error': 'Not found'}), 404)

if __name__ == '__main__':
    app.run(host='0.0.0.0')
