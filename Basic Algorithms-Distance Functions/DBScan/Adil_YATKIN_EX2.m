% This script is for testing DBscan implementation : 
load("practice_2_03_02_2022","DS")
DS;

labels = DBscan(DS, 0.3, 10);
labels