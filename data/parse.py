"""Json text parser."""

import json

data = None
with open("data.txt", 'r') as f:
    data = json.load(f)

with open("data.json", 'w+') as f:
    # json.dump(data, f, indent=4)
    f.write(json.dumps(data, indent=4))

for key, value in data['chart'].items():
    file_name = 'chart-' + key + '.json'
    with open(file_name, 'w+') as f:
        # json.dump(value, f, indent=4)
        f.write(json.dumps(value, indent=4))
