# api.py - polu4 - 2025-04-21
# Adapted from flask_sample.py provided in class.

from flask import Flask, jsonify, request
import csv
import os
import sys

app = Flask(__name__)

DATA_FILE = os.path.join("..", "data", "games.csv")

def get_top_games_by_year(year):
    games = []

    with open(DATA_FILE, newline='', encoding='utf-8') as f:
        reader = csv.DictReader(f)
        for row in reader:
            if row.get('YearPublished') == str(year):
                try:
                    name = row['Name']
                    rating = float(row['AvgRating'])
                    games.append({'name': name, 'rating': rating})
                except ValueError:
                    continue

    games.sort(key=lambda g: g['rating'], reverse=True)
    return games[:10]

# API
@app.route("/")
def index():
    return "Board Game API is running! See /help for documentation."

@app.route("/help")
def help():
    return """
    <h2>Board Game API - Help</h2>
    <p>Use this API to get the top-rated board games released in a specific year.</p>
    
    <h3>Endpoints:</h3>
    <ul>
        <li><b>GET /games/&lt;year&gt;</b><br>
            Returns the top-rated board games released in the given year.<br>
            Example: <code>/games/2020</code>
        </li>
    </ul>
    
    <h3>Response Format (JSON):</h3>
    <pre>[
    {
        "name": "Lost Ruins of Arnak",
        "rating": 8.1
    },
    {
        "name": "Dune: Imperium",
        "rating": 8.0
    }
    ]</pre>
    """

@app.route("/games/<int:year>")
def games_by_year(year):
    top_games = get_top_games_by_year(year)
    return jsonify(top_games)

# --- Run the app ---
if __name__ == "__main__":
    if len(sys.argv) != 3:
        print("Usage: python3 api.py HOST PORT")
        sys.exit(1)
    host = sys.argv[1]
    port = int(sys.argv[2])
    app.run(host=host, port=port)
