"""Json text to csv converter."""

import json
import csv
from datetime import datetime
from time import gmtime, localtime, asctime

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
        header = list(datapoints[0].keys())[0:3] + ['unix_time_conv']
        csv_w.writerow(header)
        for row in datapoints:
            row = list(row.values())[0:3]
            unix_timestamp = int(str(row[1])[0:10])
            # asctime = asctime(localtime(unix_timestamp))
            datetime_obj = datetime.fromtimestamp(unix_timestamp)
            row.append(datetime_obj)
            csv_w.writerow(row)
