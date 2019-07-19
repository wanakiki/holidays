# 运用爬虫方式，依次递进找到最后一个网页
# The program will use urllib to read the HTML from the data files below, extract the href= vaues from the anchor tags, scan for a tag that is in a particular position relative to the first name in the list, follow that link and repeat the process a number of times and report the last name you find.

# Find the link at position 18 (the first name is 1). Follow that link. Repeat this process 7 times. The answer is the last name that you retrieve.
# Hint: The first character of the name of the last page that you will load is: M
from bs4 import BeautifulSoup
import urllib.request, urllib.error, urllib.parse
import re

url = 'http://python-data.dr-chuck.net/known_by_Cleo.html'

index = 18
count = 7

for i in range(count):
    html = urllib.request.urlopen(url).read()
    soup = BeautifulSoup(html, 'html.parser')

    tags = soup('a')
    url = tags[index-1].get('href', None)

print('最终网址为', url)

print('名称为', re.findall('_([a-zA-Z]+).h', url)[0])

