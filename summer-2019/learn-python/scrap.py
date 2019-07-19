# 抓取网站中的数据并计算数据总和
import urllib.request, urllib.parse, urllib.error
from bs4 import BeautifulSoup


url = 'http://python-data.dr-chuck.net/comments_290548.html'
html = urllib.request.urlopen(url).read()
soup = BeautifulSoup(html, 'html.parser')

span = soup('span')
res = 0
for aspan in span:
    res = res + int(aspan.get_text())

print('结果为', res)