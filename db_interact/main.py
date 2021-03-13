import psycopg2
from tabulate import tabulate

class Psql:

    def __init__(self, password, dbname = 'postgres', user ='postgres', host='localhost'):

        self.conn = psycopg2.connect(dbname = dbname,
                                user = user, 
                                password = password,
                                host = host)

        self.cursor = self.conn.cursor()

        print('Connect Successed')

    def get_data_command(self):
        text = input("Input SQL command -->")
        self.cursor.execute(text)
        data = self.cursor.fetchall()
        print(tabulate(data, tablefmt='orgtbl'))
        self.cursor.close()

    def get_data_file(self):
        file_name = input("Paste absolute SQL file location -->")
        with open(file_name, "r") as f:
            for line in f.readlines(): 
                self.cursor.execute(line)
                data = self.cursor.fetchall()
                print(tabulate(data, tablefmt='orgtbl'))
                
        self.cursor.close()

    def __del__(self):
        self.conn.close()

if __name__ == "__main__":
    psql = Psql('administratorpass',
                dbname='labs',
                user='administrator',
                host='localhost')

    psql.get_data_file()
