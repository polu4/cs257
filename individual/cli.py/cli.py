# getTopYear Luke Poley 20250416 LukePoley/getTopYear/Gets the best board games that were released in the given year. 
print("Running script...")

import argparse
import csv
import os

def get_top_year(year):
    filepath = os.path.join("..", "data", "games.csv")
    games = []

    with open(filepath, newline='', encoding='utf-8') as f:
        reader = csv.DictReader(f)
        for row in reader:
            if row.get('year') == str(year) and row.get('rating'):
                try:
                    games.append((row['name'], float(row['rating'])))
                except ValueError:
                    continue

    if not games:
        print(f"No games found for year {year}.")
        return

    # Sort by rating, descending
    games.sort(key=lambda x: x[1], reverse=True)

    print(f"Top-rated games from {year}:\n")
    for name, rating in games[:10]:  # top 10
        print(f"{name} - Rating: {rating}")

def main():
    parser = argparse.ArgumentParser(
        description='Get top-rated board games from a specific year.'
    )
    parser.add_argument(
        'getTopYear',
        type=int,
        help='Year to retrieve top-rated board games from.'
    )
    args = parser.parse_args()
    get_top_year(args.getTopYear)

if __name__ == '__main__':
    main()