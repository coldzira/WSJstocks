#Atah Abdi
#HW7
import sys
import xml.dom.minidom
import csv
import re
import mysql.connector
from mysql.connector import errorcode

document = xml.dom.minidom.parse(sys.argv[1])

tableElements = document.getElementsByTagName('table')
data = []
for tr in tableElements[2].getElementsByTagName('tr'):
	row = ""
	for td in tr.getElementsByTagName('td'):
		for a in td.getElementsByTagName('a'):
			for node in a.childNodes:
				if node.nodeType == node.TEXT_NODE:
					row += node.nodeValue.encode('ascii','ignore').strip() + " "
		for node in td.childNodes:
			if node.nodeType == node.TEXT_NODE:
				row += node.nodeValue.encode('ascii','ignore').replace(',', '').strip() + " "
	data.append(row)

final_data = [re.split('(?<=[a-zA-Z])\s+(?=\()|(?<=\))\s+|(?<=[\d\$-])\s+(?=[\d\$-])|(?<=\d)\s+(?=[a-zA-Z])', i) for i in data]
final_data = [i[:-1]+[i[-1][:-1]] for i in final_data]
final_data = final_data[1:len(final_data)]

DB_NAME = 'stocks'

def insert(cursor, exchange, symbol, company, volume, price, change):
   query = 'INSERT INTO stockinfo(exchange,symbol,company,volume,price,difference) VALUES (%s, %s, %s, %s, %s, %s)'
   cursor.execute(query, (exchange, symbol, company, volume, price, change))


def delete(cursor):
    query = 'DELETE FROM stockinfo'
    cursor.execute(query)

try:
    cnx = mysql.connector.connect(host='localhost', user='atahabdi', password='')
    cursor = cnx.cursor()
    cnx.database = "stocks"
    delete(cursor)
    cnx.commit()
    for query in final_data:
        insert(cursor, "NYSE", query[2].replace("(","").replace(")",""), query[1], query[3], query[4].replace("$",""), query[5])
        cnx.commit()

except mysql.connector.Error as err:
    print(err)
finally:
    cnx.close()