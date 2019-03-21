import os
from os import listdir
from os.path import isfile, join
import csv

script_dir = os.path.dirname(__file__)

data = []
with open(script_dir+ '/dictation_results.csv',"rt") as f:
	for row in f:
		row = row[:-2]
		data.append(row)
		# f_name = row[:10]
		# output=open(script_dir + "/texts/" + f_name +'.txt','w')
		# output.write(row)
print(data)
