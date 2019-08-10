import xml.etree.ElementTree as ET
import urllib.request
import urllib.parse
import urllib.error

url = 'http://py4e-data.dr-chuck.net/comments_275915.xml'   # 指定URL
uh = urllib.request.urlopen(url)
data = uh.read()    #获取网页数据

print('Retrived', len(data), 'characters')
tree = ET.fromstring(data)
counts = tree.findall('.//count')   #查找count标签
print('Count:', len(counts))

res = 0
for count in counts:
    res = res + int(count.text)

print('Sum:', res)
