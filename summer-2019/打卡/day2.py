import random

x = random.randint(1, 100)
print('Input a number between 1 and 100: ')

while True:
    tmp = int(input())
    if tmp == x:
        print('Correct!')
        break

    elif tmp > x:
        print('It is bigger than x')

    else:
        print('It is smaller than x')

