# Counting Organizations

# This application will read the mailbox data(mbox.txt) count up the number email messages per organization(i.e. domain name of the email address) using a database with the following schema to maintain the counts.

# CREATE TABLE Counts(org TEXT, count INTEGER)


# If you run the program multiple times in testing or with dfferent files, make sure to empty out the data before each run.

# The data file for this application: http: // www.pythonlearn.com/code/mbox.txt.

# The program can be speeded up greatly by moving the commit operation outside of the loop. In any database program, there is a balance between the number of operations you execute between commits and the importance of not losing the results of operations that have not yet been committed.
import sqlite3

con = sqlite3.connect('store.db')   #连接数据库
cur = con.cursor()                  #创建游标对象

cur.execute('DROP TABLE IF EXISTS Counts')  #如果存在就提前删除表
cur.execute('CREATE TABLE Counts(org TEXT, count INTEGER)')

file_name = input('Input file name-')
if len(file_name) < 1:
    file_name = 'mbox.txt'

fh = open(file_name)
for line in fh:
    if not line.startswith('From'):
        continue
    words = line.split()
    email = words[1]

    # 检测是否已经添加email，这里的查询方式有很多种 直接提出count也可以
    row = cur.execute('SELECT * FROM Counts WHERE org = ?', (email,))
    row = row.fetchone()    #语句执行所返回的对象即使查询不到也为空，需要fetch抓取
    if row is None:
        cur.execute('INSERT INTO Counts(org, count) VALUES(?, 1)', (email,))
    else:
        cur.execute('UPDATE Counts SET count = count + 1 WHERE org = ?', (email,))
    
    con.commit()    #提交更改 注意是con提交

cur.close()
