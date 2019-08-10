def getNumber(line : str):
    index = line.find(':') + 1  #查找冒号更加合适
    return float(line[index:])

# Use the file name mbox-short.txt as the file name
fname = input("Enter file name: ")
if len(fname) < 1:
    fname = 'mbox-short.txt'
fh = open(fname)

Sum = 0
num = 0
for line in fh:
    if not line.startswith("X-DSPAM-Confidence:"):
        continue
    Sum = Sum + getNumber(line.rstrip())
    num = num + 1    

print('Average spam confidence:', Sum / num)

