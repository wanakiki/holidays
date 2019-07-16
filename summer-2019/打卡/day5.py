# 定义加法函数
def addNum(a = 0, b = 0):
    return (a + b)


a = int(input('输入一个数 '))
b = int(input('输入另一个数 '))

print('默认参数相加为', addNum())
print('结果为', addNum(a, b))
