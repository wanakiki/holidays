#The program will prompt for a URL, read the JSON data from 
# that URL using urllib and then parse and extract the comment
#  counts from the JSON data, compute the sum of the numbers in 
# the file and enter the sum below

#JSON地址：http: // python-data.dr-chuck.net/comments_290549.json(Sum ends with 90)
import urllib.request, urllib.parse, urllib.error
import json

url = 'http://python-data.dr-chuck.net/comments_290549.json'
data = urllib.request.urlopen(url)
data = data.read()

js = json.loads(data)

# 输出js文件
# print(json.dumps(js, indent=4))
comments =  js['comments']
res = 0

for comment in comments:
    res = res + comment['count']

print(res)