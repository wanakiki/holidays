# 输出带引号的文字
a = "python"
b = "It's a language"
c = 'They are "good"'
d = "wo are \"you\""

e = [a, b, c, d]
for i in e:
    print(i)
# 输出列表的第三个数据
print("第三个数据为", e[2])

# list添加数据
e.append('good')
print('添加后', e)

# list删除数据
del e[-2]   #删除倒数第二个
print('删除后', e)