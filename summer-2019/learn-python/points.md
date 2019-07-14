# 一些学python过程中记录的点

## 杂项

1. 代码的四种模式：顺序、条件、循环、存储并重复使用（即函数）。
2. 空类型 None  ``if x is None:``


## if语句

分为if、else；if、elif、else。注意只会取一个执行。

``not``可以和if连用，表示对逻辑的反转。

## try/expect

消除或捕捉回溯（traceback）的一种方式，在已经知道部分代码可能出现错误的时候可以使用。

```py
#示例
str = 'hello world'
try:
    istr = int(str)
except:
    istr = 1

print('istr is', istr)

#从键盘输入数据
tmp = input('Enter a number: ')
try:
    num = int(tmp)
except:
    num = -1

if num >= 0:
    print('Nice work')
else:
    print('Not a number')
```

## 函数 store(and reused) steps

存储并重复使用的代码片段。和其他语言一样，同样可以进行调用（invoke or call）。print、int、float，都是已经定义好的函数（内置函数）。简单例子：

```py
def thing():
    print('hello')
    print('fun')

thing()    #调用
```

返回值（residual value）

## 循环语句

definite -> for、indefinite -> while

infinite 无限循环

跳出循环：break、continue

## 字符串 String

和C语言相同，字符串的索引同样从零开始，不过由于python的特殊性，新建字符串变得非常简单。字符串之间可以用+连接，可以用大于小于等于对应符号进行判断。

实用函数：

1. len 获得字符串长度。

```py
# 遍历字符串
words = 'hello world'
index = 0
while index < len(words):
    letter = words[index]
    print(index, letter)
    index = index + 1

# 另一种等价写法
index = 0
for letter in words:
    print(index, letter)
    index = index + 1
```

2. 中括号+冒号组合，形如``[a:b]`` 截取字符串（slice 切片），有以下规则：
    1. 生成的区间为左闭右开区间
    2. 当第二个数字的大小超过了整个字符串的长度时，整个截取过程会在字符串的末尾停止。
    3. a、b两个数都不是必须，当缺少一个时可以等价看作0和无穷。**（那么问题来了，如果自己写一个负数或者不成立的区间会出现什么情况呢？）**

3. + 连接字符串。
4. in 判断一个字符是否在字符串中，并返回布尔值。
5. 字符串属于类，可用``type``查看，而``dir``函数可以返回这个类的所有方法。
6. ``find()``找到字符在字符串中的索引，查找不到返回-1。
7. ``replace()``查找并替换，两个参数。替换所有找到的值。
8. ``lstrip()``、``rstrip()``、``strip()``去掉字符串左、右、两端的空白。

## 文件操作 FILE

handle = open(filename, mode)。newline，一行的结束，我们用'\n'字符来代替，只是一个字符，可以这样定义``stuff = 'x\ny'``这样输出stuff就会自动换行，stuff的字符数为3。

File handle as  a sequence(序列)，把文件把手当作一个序列来使用，可以用for循环遍历其中的所有行。``read()``操作则可以读出整个文件到一个单独的字符串中。

小trick：print()函数再输出内容之后会自动补充一个换行，但当输出的字符串以'\n'结尾时便会造成额外空白的一行。为了解决这个问题，可以使用``rstrip()``去掉原来字符串右边的空白。

使用try/except组合避免错误的文件名导致程序运行出现问题。

## List （好吧我不知道汉语对应什么）

list由两个方括号包围，内部变量之间用逗号分隔，list里可以放任意变量包括另一个list，一个list可以为空。

```py
stuff = list()
stuff.append('book')
stuff.append(99)
print(stuff)
```

**string是一成不变的，我们不能用索引改变string中指定字符的值，相反的，list是可变的，我们能够通过索引改变某个位置元素的值。**（immutable-mutable）

``range()``返回一个由数字构成的list，数字从零开始，小于函数的参数。

和string类似，list同样可以用+连接，也同样可以用:进行切片，可用in判断是否存在并返回布尔值。
