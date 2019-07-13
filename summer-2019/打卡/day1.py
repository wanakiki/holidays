x = int(input("输入横坐标"))
y = int(input("输入纵坐标"))

if x > 0:
    if y > 0:
        print('第一象限')
    elif y < 0:
        print('第四象限')
    else:
        print('x轴正半轴')

elif x < 0:
    if y > 0:
        print('第二象限')
    elif y < 0:
        print('第三象限')
    else:
        print('x轴负半轴')

else:
    if y > 0:
        print('y轴正半轴')
    elif y < 0:
        print('y轴负半轴')
    else:
        print('原点')
