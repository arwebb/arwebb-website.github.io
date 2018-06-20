import random
import json
import os

def add_values():
  with open(os.path.join(os.getcwd(), 'json/datapoints.json'), 'r') as f:
    data = json.load(f)
    for point in data:
      point['value'] = random.randint(1,101)

  with open(os.path.join(os.getcwd(), 'json/datapoints.json'), 'w') as f:
    f.write(json.dumps(data, indent=4))

if __name__ == '__main__':
  add_values()