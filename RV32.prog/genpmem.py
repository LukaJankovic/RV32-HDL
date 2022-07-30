import sys, numpy

data = ''.join([bin(i)[2:].zfill(32) for i in numpy.fromfile(sys.argv[1], dtype='<u4').tolist()])
databytes = [data[i:i+8] for i in range(0, len(data), 8)]
#for i in [bin(i)[2:].zfill(32) for i in numpy.fromfile(sys.argv[1], dtype='<u4').tolist()]:
#    print(i)
with open(sys.argv[2], 'w', encoding="ascii") as f:
    f.write('\n'.join(databytes))