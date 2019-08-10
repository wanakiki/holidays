# 跟踪超链接，找到目标
import urllib.request
import urllib.parse
import urllib.error
from bs4 import BeautifulSoup

# 假定输入规范
count = int(input('Enter Count:'))
position = int(input('Enter Position:')) - 1    #从1开始计算位置
flag = int(input('''Select Url:
1: http://py4e-data.dr-chuck.net/known_by_Fikret.html
2: http://py4e-data.dr-chuck.net/known_by_Cohen.html
'''))

if flag == 1:
    url = 'http://py4e-data.dr-chuck.net/known_by_Fikret.html'
else:
    url = 'http://py4e-data.dr-chuck.net/known_by_Cohen.html'

while True:
    html = urllib.request.urlopen(url).read()   #打开界面
    soup = BeautifulSoup(html, 'html.parser')   #界面解析


    #界面链接的格式为 ``<a href = "xx.com"></a>``
    #应该提取a标签
    a_coll = soup('a')    #获取a标签集合 属于beautiful soup中的类型，应该是重载了括号，print(a_coll[0])支持这种访问
    href = a_coll[position].get('href', None)
    if href is None:
        print('runtime error')
        quit()
    
    if count > 1:
        count = count - 1
        url = href  # 更新url 以进一步抓取
    else:
        res = a_coll[position].get_text()   #获取内容
        break

print(res)
