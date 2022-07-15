import sys

with open(sys.argv[1], "r") as f:
    data = f.read().replace('\n', '')
    databytes = [data[i:i+8] for i in range(0, len(data), 8)]
    for b in databytes:
        print("b\""+b+"\",")
