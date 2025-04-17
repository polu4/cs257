'''
cli.py 
Thomas Lund
16-Apr-2025

NAME: cli.py - command-line interface
SYNOPSIS: cli.py {filepath to csv} {max number of players: int}
DESCRIPTOPM: Prints a list of games with the inputted number of max players, sorted
by average user rating
'''
import argparse as arg
import pandas as pd


def getParse():
    parser = arg.ArgumentParser(description="Lookup the games with a number of players")
    parser.add_argument('dataLocation',metavar="file path",help="Where the data is as a csv file")
    parser.add_argument('numPlayers',metavar="Players number",help="How many players to search for")
    args = parser.parse_args()
    return args

def grabDat(fileLoc):
    dat = pd.read_csv(fileLoc)
    return dat.sort_values('average')[::-1] #sort by collumn 'average' then reverse for descending order

def print_full(x):
    pd.set_option('display.max_columns', 50)
    print(x)
    pd.reset_option('display.max_rows')

def main():
    args = getParse()
    dat = grabDat(args.dataLocation)
    print(args.numPlayers)
    print(dat[dat["maxplayers"]==int(args.numPlayers)][["name","average","minplayers","maxplayers","playingtime"]]) # print certain collumns of the dataframe for rows with max players=x


main()
