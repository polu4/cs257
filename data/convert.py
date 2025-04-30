import csv

filePath = 'cs257/cs257/data/games1-1000.csv'
outPath = "cs257/cs257/data/games.csv"

def grabDat(fileLoc):
    out = []
    headers = []
    with open(fileLoc, newline='',encoding='utf8') as data:
        reader = csv.reader(data)
        isFirst = 1
        isSecond = 0
        for row in reader:
            if isSecond:
                for i in row:
                    out.append([i])
                isSecond=0
            if isFirst:
                for i in row:
                    headers.append(i)
                isFirst = 0
                isSecond = 1
            else:
                for ind,i in enumerate(row):
                    out[ind].append(i)
    return out,headers


dat,headers = grabDat(filePath)

with open(outPath,'w',encoding='utf-8') as f:
    writer = csv.writer(f)
    writer.writerows(dat)
        