import psycopg2


def connect_db():
    db_list = ['psycopg2_test', 'jonhaley', 'postgres', 'template1']
    conn = None

    for db in db_list:
        try:
            conn = psycopg2.connect(f'dbname={db} user=postgres password=53144169')
        except (Exception, psycopg2.DatabaseError) as error:
            print(error)
        else:
            print(conn)
            
    conn.close()
    print(conn)

if __name__=='__main__':
    connect_db()