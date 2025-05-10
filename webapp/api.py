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
    ''' Returns a list of all authors in the database whose surnames are equal
        to the specified search string. Each author is represented by a dictionary
        with keys "given_name" and "surname".

        This function introduces an important security issue. Suppose you
        have information provided by your user (e.g. a search string)
        that needs to become part of your SQL query. Since you can't trust
        users not to be malicious, nor can you trust them not to do weird and
        accidentally destructive things, you need to be very careful about
        how you use any input they provide. To avoid the very common and
        very dangerous security attack known as "SQL Injection", we will use
        the parameterized version of cursor.execute whenever we're using
        user-generated data. See below for how that goes. '''
    out = []
    try:
        query = '''SELECT name
                   FROM names
                   WHERE %(header)s = %(searchTerm)s AND 
                   
                   '''
        connection = get_connection()
        cursor = connection.cursor()
        idsT2 = str(header)
        idsT3 = 'names'
        linkedIds = idsT2 + '_to_name'
        cursor.execute(query, (search_text,))
        for row in cursor:
            authors.append({'given_name':row[0], 'surname':row[1]})

    except Exception as e:
        print(e, file=sys.stderr)

    connection.close()
    return authors

@app.route('')\
def funt():
    return