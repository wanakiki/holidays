import sqlite3

conn = sqlite3.connect('mail-count.sqlite')
cur = conn.cursor()

cur.execute('DROP TABLE IF EXISTS Counts')  # 如果存在就提前删除表
cur.execute('''CREATE TABLE Counts (org TEXT, count INTEGER)''')    # 创建表

fh = open('mbox.txt')
for line in fh:
    if not line.startswith('From:'):
        continue
    mail = line.split()[1]
    index = mail.find('@')+1
    org = mail[index:]

    # 针对org执行sql后续操作，先查询再决定更新还是插入
    cur.execute('''SELECT count FROM Counts WHERE org = ?''', (org,) ) #execute函数第二个参数需要是元组
    num = cur.fetchone()    #返回list，查询不到时返回None

    if num is None:
        cur.execute('INSERT INTO Counts(org, count) VALUES(?, 1)', (org, ))
    else:
        cur.execute('UPDATE Counts SET count = ? WHERE org = ?', (num[0] + 1, org))
        # 在进行更新时可以直接 count = count + 1

conn.commit()   #提交放在循环外加速
cur.execute('SELECT * FROM Counts ORDER BY count DESC LIMIT 1')
print(cur.fetchone())
cur.close()
