name = input("Enter file:")
if len(name) < 1 : name = "mbox-short.txt"
handle = open(name)

status = {}
for line in handle:
    if not line.startswith('From '):
        continue

    # 抓取时间
    line = line.split()
    line = line[5]
    line = line.split(':')

    # 截取时间
    tim = line[0]
    if tim in status:
        status[tim] = status[tim] + 1
    else:
        status[tim] = 1

res = sorted([(k, v) for (k, v) in status.items()])
for k, v in res:
    print(k, v)
