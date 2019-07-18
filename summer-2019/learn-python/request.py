import urllib.request, urllib.parse, urllib.error

fhand = urllib.request.urlopen('http://127.0.0.1')

for line in fhand:
    print(line.decode().strip())