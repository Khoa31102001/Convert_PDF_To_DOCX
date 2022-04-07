
from  pdf2docx import  parse
from mysql import connector
import json
import time
class  Source:
    def __init__(self) -> None:
        self.id = None
        self.filename = None
        self.pdf = None
        self.doc = None
        self.time = None
        self.status = None
        self.username = None


class DbConnect:
    def __init__(self) -> None:
        with open('db.json','r') as f:
            db = json.load(f)
        self.connection = connector.connect(**db);
    

    def get_source(self) -> Source:
        sql_select_query = """
        SELECT * FROM Source WHERE Source.status = '0' 
        ORDER BY Source.time 
        Limit 1"""
        with self.connection.cursor() as cursor:
            cursor.execute(sql_select_query)
            record = cursor.fetchone()
            if record is not None:
                source = Source()
                source.id = record[0]
                source.filename= record[1]
                source.pdf = record[2]
                source.doc = record[3]
                source.time = record[4]
                source.status = record[5]
                source.username = record[6]
                return source
            return None

    def set_source(self,source:Source):
        sql_update_query = """ update source set doc=%s,status =%s where id = %s """
        with  self.connection.cursor() as cursor:
            update_tuple = (source.doc,source.status,source.id)
            cursor.execute(sql_update_query,update_tuple)
            self.connection.commit()

def convertToBinaryData(filename):
    # Convert digital data to binary format
    with open(filename, 'rb') as file:
        binaryData = file.read()
    return binaryData

def write_file(data, filename):
    # Convert binary data to proper format and write it on Hard Disk
    with open(filename, 'wb') as file:
        file.write(data)


def main():
    
    while True:
        db = DbConnect()
        if (source:=db.get_source()) is None:
            print("--run out of source--")
            time.sleep(1)
            db.connection.close()
            continue
        
        try:
            print(f"Handling source_id = {source.id}")
            write_file(source.pdf,"__temp__.pdf")
            parse("__temp__.pdf","__temp__.docx")
            source.doc = convertToBinaryData("__temp__.docx")
            source.status = 1
        except Exception as e:
            source.status = None

        db.set_source(source)
        db.connection.close()

        
            

if __name__ == '__main__':
    main()





