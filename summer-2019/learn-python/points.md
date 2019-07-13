# 一些学python过程中记录的点

## 杂项

1. 代码的四种模式：顺序、条件、循环、存储并重复使用（即函数）。
2. 空类型 None  ``if x is None:``


## if语句

分为if、else；if、elif、else。注意只会取一个执行。

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

和C语言相同，字符串的索引同样从零开始，不过由于python的特殊性，新建字符串变得非常简单。

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
