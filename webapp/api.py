import flask as fl
import psycopg2 as psy
import argparse as ap
import sys
import config

app = fl.Flask(__name__)

def get_connection():
    ''' Returns a database connection object with which you can create cursors,
        issue SQL queries, etc. This function is extremely aggressive about
        failed connections--it just prints an error message and kills the whole
        program. Sometimes that's the right choice, but it depends on your
        error-handling needs. '''
    try:
        return psy.connect(database=config.database,
                                user=config.user,
                                password=config.password)
    except Exception as e:
        print(e, file=sys.stderr)
        exit()

def queryGames(header,searchTerm):
    
    out = []
    try:
        valid_headers = ['artist', 'designer', 'minplayers'] 
        if header not in valid_headers:
            raise ValueError("Invalid header")
        query = f'''
            SELECT * 
            FROM name, {header}, {header}_to_name
            WHERE {header}.{header} LIKE %s
            AND {header}.id = {header}_to_name.{header}_to_nameId
            AND name.id = {header}_to_name.nameid;
        '''
        connection = get_connection()
        cursor = connection.cursor()
        cursor.execute(query, (f'%{searchTerm}%',)) 
        for row in cursor:
            out.append([row[0],row[2]])
        connection.close()
    except Exception as e:
        print(e, file=sys.stderr)
    
    return out

@app.route('/games')
def funt():
    return