import  json

x = {
    'host':'localhost',
    'user':'root',
    'passwd':'123456789',
    'database':'ltm',
    'port':'3306'
}

y = json.dumps(x)

with open("db.json",'w') as f:
    f.write(y)

