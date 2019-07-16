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

3. ``+`` 连接字符串。
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

调用成员函数sort可以对list本身进行排序，排序后可以对其他变量赋值。由于成员函数具有返回值，`` x = data.sort()``这条语句执行后x的值为None。

```py
stuff = list()
stuff.append('book')
stuff.append(99)
print(stuff)
```

**string是一成不变的，我们不能用索引改变string中指定字符的值，相反的，list是可变的，我们能够通过索引改变某个位置元素的值。**（immutable-mutable）

``range()``返回一个由数字构成的list，数字从零开始，小于函数的参数。

和string类似，list同样可以用+连接，也同样可以用:进行切片，可用in判断是否存在并返回布尔值。

list和string的联合，``split()``函数，分割字符串为list。可以设定参数对指定分隔符进行分割，默认分隔符为空格。该函数可以自动识别多个空格，但是不能识别多个自定义的分隔符。

## dictionary 字典

```py
purse = dict()
purse['a'] = 2
purse['b'] = 100
purse['c'] = 45
purse['c'] = purse['c'] + 2

for x in purse
    print(x)    #实际上遍历的是键
```

可以使用花括号新建字典常量，使用冒号连接的键-值对，同样可以为空。

``get()``查询对应键的值，可以设置查找不到时的默认值，避免直接使用时出现错误导致程序无法运行。例如：

```py
# 使用字典统计数目
lpl = dict()
names = ['edg', 'omg', 'rng', 'edg','rw', 'fpx']
for name in names:
    lpl[name] = lpl.get(name, 0) + 1
print(lpl)
```

``keys()``、``values()``、``items()``，返回对应的list。

## tuples 元组

list的有限版本，内容不可变。元组之间可以直接赋值，可以进行比较。``sorted(x)``可以对x进行排序，有多个参数。

```py
>>> t = tuple()
>>> dir(t)
['__add__', '__class__', '__contains__', '__delattr__', '__dir__', '__doc__', '__eq__', '__format__', '__ge__', '__getattribute__', '__getitem__', '__getnewargs__', '__gt__', '__hash__', '__init__', '__init_subclass__', '__iter__', '__le__', '__len__', '__lt__', '__mul__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__rmul__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', 'count', 'index']
>>> (x, y) = (99, 98)
>>> print(y)
98
```

小trick (list comprehension)
```py
>>> c = {'a':1, 'b':3, 'c':23}
>>> print(sorted ( [(v, k) for k, v in c.items()] ))
[(1, 'a'), (3, 'b'), (23, 'c')]
```

## regular expression 正则表达式

wild card 通配符，findall返回list，查找不到返回空的list。字符串满足多个匹配时返回长者，可以用❓避免贪心。小括号可以限制返回值的区间。
[官方说明](https://docs.python.org/zh-cn/3/howto/regex.html)

```py
import re
#使用re.search 代替 startswith
if line.startswith('From:'):
    print(line)

if re.search('^From:', line):
    print(line)

#数据提取
x = 'my name 2 is 23 and 34'
y = re.findall('[0-9]+', x)
print(y)
```

一部分常用：
<table><tbody><tr><td><strong>^</strong></td><td>Matches the beginning of a line</td></tr><tr><td><strong>$</strong></td><td>Matches the end of the line</td></tr><tr><td><strong>.</strong></td><td>Matches any character</td></tr><tr><td><strong>\s</strong></td><td>Matches whitespace</td></tr><tr><td><strong>\S</strong></td><td>Matches any non-whitespace character</td></tr><tr><td><strong>*</strong></td><td>Repeats a character zero or more times</td></tr><tr><td><strong>*?</strong></td><td>Repeats a character zero or more times (non-greedy)</td></tr><tr><td><strong>+</strong></td><td>Repeats a character one or more times</td></tr><tr><td><strong>+?</strong></td><td>Repeats a character one or more times (non-greedy)</td></tr><tr><td><strong>[aeiou]</strong></td><td>Matches a single character in the listed set</td></tr><tr><td><strong>[^XYZ]</strong></td><td>Matches a single character <em>not</em> in the listed set</td></tr><tr><td><strong>[a-z0-9]</strong></td><td>The set of characters can include a range</td></tr><tr><td><strong>(</strong></td><td>Indicates where string extraction is to start</td></tr><tr><td><strong>)</strong></td><td>Indicates where string extraction is to end</td></tr></tbody></table>

