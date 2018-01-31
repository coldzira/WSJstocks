#Atah Abdi
#HW7
import sys
import xml.dom.minidom
import csv
import re

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

print(data[1])
final_data = [re.split('(?<=[a-zA-Z])\s+(?=\()|(?<=\))\s+|(?<=[\d\$-])\s+(?=[\d\$-])|(?<=\d)\s+(?=[a-zA-Z])', i) for i in data]
final_data = [i[:-1]+[i[-1][:-1]] for i in final_data]
final_data = final_data[1:len(final_data)]

f = open("output.csv", "a")
for row in final_data:
	f.write("{},{},{},{},{},{}\n".format("NYSE", row[2].replace("(","").replace(")",""), row[1], row[3], row[4].replace("$",""), row[5]))
