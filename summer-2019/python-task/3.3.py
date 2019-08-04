score = input("Enter Score: ")
grade = ['D','C','B','A']

try:
    score = float(score)
except:
    print('输入不是浮点数')
    quit()

if score < 0 or score > 1:
    print('输入不在指定范围')
    quit()

score = int(score * 10)

if score < 6:
    print('F')
elif score > 9:
    print('A')
else:
    print(grade[score-6])