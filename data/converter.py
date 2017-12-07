"""Json text to csv converter."""

import json
import csv


data = None
with open("data.txt", 'r') as f:
    data = json.load(f)

data = data['chart']['data']

for dic in data:
    print(dic['legendText'])
    filename = dic['legendText'][0:2]+ '_data' + '.csv'
    datapoints = dic['dataPoints']
    with open(filename, 'w+') as f:
        csv_w = csv.writer(f)
        header = datapoints[0].keys()
        csv_w.writerow(header)
        for row in datapoints:
            csv_w.writerow(row.values())
