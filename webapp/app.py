#!/usr/bin/env python3
'''
    app.py
    A Flask application for serving the board games web app.
'''
import flask
import json
import psycopg2
import argparse
import sys
import config

app = flask.Flask(__name__)

def get_connection():
    '''
    Returns a database connection object with which you can create cursors,
    issue SQL queries, etc. This function handles connection errors by printing
    an error message and exiting the program.
    '''
    try:
        return psycopg2.connect(database=config.database,
                                user=config.user,
                                password=config.password)
    except Exception as e:
        print(e, file=sys.stderr)
        exit()

@app.route('/')
def serve_homepage():
    '''
    Serves the main page of the board games application.
    '''
    return flask.render_template('topGames.html')

@app.route('/api/games/')
def get_games():
    '''
    Returns a list of top board games from the database.
    Format: [{"id": 1, "name": "Game Name", "yearpublished": 2020, "average": 8.5}, ...]
    '''
    games_list = []
    
    try:
        query = '''
            SELECT id, name, yearpublished, average
            FROM games
            ORDER BY average DESC
            LIMIT 50
        '''
        
        connection = get_connection()
        cursor = connection.cursor()
        cursor.execute(query)
        
        for row in cursor:
            game = {
                'id': row[0],
                'name': row[1],
                'yearpublished': row[2],
                'average': row[3]
            }
            games_list.append(game)
            
        connection.close()
        
    except Exception as e:
        print(e, file=sys.stderr)
        return flask.jsonify({'error': str(e)}), 500
        
    # Add CORS headers
    response = flask.jsonify(games_list)
    response.headers.add('Access-Control-Allow-Origin', '*')
    return response

@app.route('/api/games/<int:game_id>')
def get_game_details(game_id):
    '''
    Returns detailed information about a specific game identified by its ID.
    Format: {"id": 1, "name": "Game Name", "yearpublished": 2020, "average": 8.5, 
            "designer": "Designer Name", "publisher": "Publisher", "minplayers": 2, "maxplayers": 4, "playingtime": 60}
    '''
    try:
        query = '''
            SELECT id, name, yearpublished, average, designer, publisher, 
                   minplayers, maxplayers, playingtime
            FROM games
            WHERE id = %s
        '''
        
        connection = get_connection()
        cursor = connection.cursor()
        cursor.execute(query, (game_id,))
        
        row = cursor.fetchone()
        connection.close()
        
        if row is None:
            return flask.jsonify({'error': 'Game not found'}), 404
            
        game_details = {
            'id': row[0],
            'name': row[1],
            'yearpublished': row[2],
            'average': row[3],
            'designer': row[4],
            'publisher': row[5],
            'minplayers': row[6],
            'maxplayers': row[7],
            'playingtime': row[8]
        }
        
        # Add CORS headers
        response = flask.jsonify(game_details)
        response.headers.add('Access-Control-Allow-Origin', '*')
        return response
        
    except Exception as e:
        print(e, file=sys.stderr)
        return flask.jsonify({'error': str(e)}), 500

if __name__ == '__main__':
    parser = argparse.ArgumentParser('Board Games Web Application')
    parser.add_argument('host', help='the host on which this application is running')
    parser.add_argument('port', type=int, help='the port on which this application is listening')
    arguments = parser.parse_args()
    app.run(host=arguments.host, port=arguments.port, debug=True)

