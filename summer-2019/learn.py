tmp = input('Enter a number: ')
try:
    num = int(tmp)
except:
    num = -1

if num >= 0:
    print('Nice work')
else:
    print('Not a number')