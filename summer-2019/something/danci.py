# # 输入构成单词的字母，自动遍历所有情况并进行查询

# import urllib.request, urllib.error, urllib.parse
# from bs4 import BeautifulSoup
# import re

# url = 'https://fanyi.baidu.com/#en/zh/happy'

# html = urllib.request.urlopen(url).read()
# soup = BeautifulSoup(html, 'html.parser')

# res = open('res.txt', 'w+')
# spans = soup('span')
# for span in spans:
#     print(span.encode(), file = res)

  
# res.close()
# 两个问题需要解决，生成全部序列和联网查询
# 生成全排列目前的做法是采用一个标记数组保留状态，用递归函数多次执行达到目的

# 递归函数
def helpr(source, res, flag, index):
    # 递归基
    if(index == len(source)):
        print(''.join(res))
    for i in range(len(source)):
        if flag[i] == 0 :
            res[index] = source[i]
            flag[i] = 1
            helpr(source, res, flag, index+1)
            flag[i] = 0
            
tmp = str(input('输入字母(空格分隔)'))
words = tmp.split()
res = []
print('字母为:', words)

# 创建状态数组
flag = [0 for x in range(len(words))]
res = ['' for x in range(len(words))]
print(res)

helpr(words, res, flag, 0)
                                                    