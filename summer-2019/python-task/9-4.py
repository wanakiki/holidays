name = input("Enter file:")
if len(name) < 1:
    name = "mbox-short.txt"
handle = open(name)
res = dict()

for line in handle:
    if not line.startswith('From '):
        continue

    line = line.split()
    author = line[1]
    res[author] = res.get(author, 0) + 1

name = None
count = None
for k, v in res.items():
    if count is None or v > count:
        count = v
        name = k

print(name, count)