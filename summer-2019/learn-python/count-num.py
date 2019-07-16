# 统计文本文档中最高频出现的字符
def ch_File(filename):
    try:
        filex = open(filename, encoding='UTF-8')
    except:
        print('文件无法打开，请检查输入')
        quit()

    count = dict()
    for line in filex:
        line = line.strip()

        for word in line:
            count[word] = count.get(word, 0) + 1
    
    #汉语的分割函数还有待优化，没有较为合理的办法直接分出汉字
    res = sorted([(v, k) for k, v in count.items()], reverse=True)

    print('字|个数')
    for x, y in res[:10]:
        print(y, x)


def en_File(filename):
    try:
        filex = open(filename)
    except:
        print('文件无法打开，请检查输入')
        quit()

    count = dict()
    words = list()
    for line in filex:
        line = line.rstrip()
        words = line.split()

        for word in words:
            count[word] = count.get(word, 0) + 1
    
    res = sorted([(v, k) for k, v in count.items()], reverse = True)

    print('字|个数')
    for x, y in res[:10]:
        print(y, x)

# 主函数部分
print('统计文本文件中最高频出现的字符或单词')
while 1:
    flag = input('选择文件的语言类型，0汉语，1英语 ')
    try:
        flag = int(flag)
    except:
        print('模式选择错误，请重新输入')
        continue
    break

filename = input('输入文件名 ')
if flag:
    en_File(filename)
else:
    ch_File(filename)
