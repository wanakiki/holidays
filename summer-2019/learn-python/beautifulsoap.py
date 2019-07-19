# 抓取指定页面的标签
from bs4 import BeautifulSoup
import urllib.request, urllib.parse,urllib.error

url = input('Enter webite- ')
html = urllib.request.urlopen(url).read()
soup = BeautifulSoup(html, 'html.parser')

tags = soup('a')
for tag in tags:
    print(tag.get('href', None))