import urllib.request, urllib.error, urllib.parse
import json     #导入json

# - Sample data: http://py4e-data.dr-chuck.net/comments_42.json (Sum=2553)
# - Actual data: http://py4e-data.dr-chuck.net/comments_275916.json (Sum ends with 15)

url = input('Enter url ')
print('Retriving', url)
uh = urllib.request.urlopen(url).read()
print('Retrived', len(uh), 'characters')

js = json.loads(uh)
# 观察文档结构，js为字典，js['comments']为由字典组成的list

res = 0
for comment in js['comments']:
    res = res + comment['count']

print('Sum:', res)
