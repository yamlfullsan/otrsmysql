import csv
 
with open('consultita.csv') as csvfile:  
    reader = csv.DictReader(csvfile,  delimiter = " ")
    for new in reader:
        print(new)