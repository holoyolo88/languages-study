import pymysql
import random

random.seed(10)

try :
    # MySQL Connection 연결
    connection = pymysql.connect(host='localhost', user='root', password='Thgus69!',db='testdb', charset='utf8')

    # Connection 으로부터 Cursor 생성
    # Array based cursor : return tuple after exectuing SQL 
    cursor = connection.cursor()

    users=[]
    for i in range(10):
        users.append('user'+str(i))
    ages=[]
    for i in range(10):
        ages.append(random.randrange(0,100))

    # parameter placeholder
    sql = 'insert into table1 values(%s, %s,%s)'
    for i in range(10):
        cursor.execute(sql,(users[i], ages[i],i+1))

    connection.commit()

    sql = 'select * from table1'
    # SQL문 실행(DB서버로 SQL문 전송)
    cursor.execute(sql)

    #row = cursor.fetchone()
    #rows= cursor.fetchmany(5)
    rows= cursor.fetchall()

    #print(rows)
    for row in rows:
        print(row[0],row[1],row[2])


    sql = 'delete from table1 where id = 0'
    cursor.execute(sql)
    connection.commit()

    sql = 'update table1 set age = %s where user = %s'
    data = (
        (50,'user1'),
        (70,'user2'),
    )
    cursor.executemany(sql, data)
    connection.commit()

    sql = 'select * from table1'
    # Dictionary based cursor : return dictionary after execting SQL
    with connection.cursor(pymysql.cursors.DictCursor) as dictcursor:
        dictcursor.execute(sql)
        rows= dictcursor.fetchall()
        for row in rows:
            print(row['user'], row['age'], row['id'])

finally : #connection 닫기
    connection.close()