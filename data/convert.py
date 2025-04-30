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

with open(outPath,'w',encoding='utf-8',newline='') as f:
    writer = csv.writer(f)
    writer.writerows(dat)


i=1
idsNames = {}
for j in range(len(dat[i])):
    if(dat[i][j] not in idsNames):
        idsNames[dat[i][j]] = {'id':len(idsNames)}
newIds = []
for k in idsNames.keys():
    newIds.append([k,idsNames[k]['id']])
with open(f"/Users/thoma/cs257/cs257/data/{headers[i]}.csv",'w',encoding='utf-8',newline='') as f:
    writer = csv.writer(f)
    writer.writerows(newIds)




for i in range(len(headers))[:25]:
    if(i==1):
        continue
    ids = {}
    idsToNames = []
    for j in range(len(dat[i])):
        if(dat[i][j] not in ids):
            ids[dat[i][j]] = {'id':len(ids)}
        idsToNames.append([ids[dat[i][j]]['id'],idsNames[dat[1][j]]['id']])
    newIds = []
    for k in ids.keys():
        newIds.append([k,ids[k]['id']])
    with open(f"/Users/thoma/cs257/cs257/data/{headers[i]}.csv",'w',encoding='utf-8',newline='') as f:
        writer = csv.writer(f)
        writer.writerows(newIds)
    with open(f'/Users/thoma/cs257/cs257/data/{headers[i]}_to_name.csv','w',encoding='utf-8',newline='') as g:
        writer = csv.writer(g)
        writer.writerows(idsToNames)
    