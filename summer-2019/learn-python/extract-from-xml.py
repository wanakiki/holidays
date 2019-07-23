# The program will prompt for a URL, read the XML data from that URL using urllib and then parse and extract the comment counts from the XML data, compute the sum of the numbers in the file.
# XML地址：http: // python-data.dr-chuck.net/comments_290545.xml(Sum ends with 57)

import urllib.request, urllib.parse, urllib.error
import xml.etree.ElementTree as ET

# url = input('Enter location-')
url = 'http://python-data.dr-chuck.net/comments_290545.xml'
uh = urllib.request.urlopen(url)
data = uh.read()

print('Retrived', len(data), 'characters')
tree = ET.fromstring(data)

counts = tree.findall('comments/comment')   #查询时需要多级结构进行确定并且不能使用相对路径
print('Comment count', len(counts))

res = 0
for count in counts:
    count = int(count.find('count').text)   #.text引用内容
    res = res + count

print('The Sum', res)

print('--------')
res = 0
counts = tree.findall('comments/comment/count')
print(len(counts))
for count in counts:
    res = res + int(count.text)
print('The sum', res)