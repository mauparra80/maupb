# Enter your code here. Read input from STDIN. Print output to STDOUT
import sys
import csv
import pandas as pd
import numpy as np
from sklearn import linear_model

#variables to store input
data = []
pred = []
n = int(input()) #take first input as number of rows

#take input and build dataframe
for i in range (n+1): #using total number of rows
    df = sys.stdin.readline().strip().split('\t')#split by tabs
    df = list(filter(None,df))
    data.append([str(c) for c in df]) #append row to data
    #now data is list of lists

#print(data)
headers = data.pop(0) #headers will be first line
data = pd.DataFrame(data, columns=headers) #make into panda
#columns=headers sets the headers for dataframe

#create 2 data frames by splitting one with tmax missing, the other
#with tmin missing
data2 = data[data['tmax'].str.contains('Missing')]
miss_max = data2.loc[:,data2.columns!='tmax']
data2 = data2.append(data[data['tmin'].str.contains('Missing')], ignore_index=True)
miss_min = data[data['tmin'].str.contains('Missing')]
miss_min = miss_min.loc[:,miss_min.columns!='tmin']

#we take out rows with missing values in the original data
data = pd.merge(data,data2,indicator=True, how='outer').query('_merge=="left_only"').drop('_merge', axis=1)
data = data.reset_index(drop=True)

#making dictionary of month to number so we can convert
d = {'January':1, 'February':2, 'March':3, 'April':4, 'May':5, 'June':6,
     'July':7, 'August':8, 'September':9, 'October':10, 'November':11,'December':12}

data.month = data.month.map(d)
miss_max.month = miss_max.month.map(d)
miss_min.month = miss_min.month.map(d)
#map the months to numbers in all df

train = data
testMax = miss_max
testMin = miss_min

#use linear regression
model1 = linear_model.LinearRegression(normalize=True)
model1.fit(train.loc[:,train.columns != 'tmax'],train.loc[:,'tmax'])

for i,j in enumerate(model1.predict(testMax)):
    pred.append((testMax.index[i],round(j,1)))
#this has filled in the missing data with predicted data for
#the max temps

#train is a varuable of original data without tmin, tmax
#this trains are models now the tmin train
model2 = linear_model.LinearRegression(normalize=True)
model2.fit(train.loc[:,train.columns != 'tmin'],train.loc[:,'tmin'])

for i,j in enumerate(model2.predict(testMin)):
    pred.append((testMin.index[i],round(j,1)))

#now sort the predictions (month,prediction)
#and print them in order
pred.sort()
for k in range(len(pred)):
    print(pred[k][1])
