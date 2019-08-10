# 统计文件中数字的总和
import re

filename = input('Input filename:')
if len(filename) < 1:
    filename = 'regex_sum_275911.txt'

res = 0
fh = open(filename)
for line in fh:
    tmp = re.findall('[0-9]+', line)
    
    # 计算一行中数字的和
    for x in tmp:
        res = res + int(x)

print(res)