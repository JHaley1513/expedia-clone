import psycopg2
from my_credentials import db_cred

def connect_db():
    db_list = ['expedia_clone', 'psycopg2_test', 'jonhaley', 'postgres', 'template1']
    conn = None

    for db in db_list:
        try:
            conn = psycopg2.connect(f'dbname={db} user={db_cred.username} password={db_cred.password}')
        except (Exception, psycopg2.DatabaseError) as error:
            print(error)
        else:
            print(conn)
            
    conn.close()
    print(conn)

if __name__=='__main__':
    connect_db()