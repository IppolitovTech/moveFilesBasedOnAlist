@echo off
set "CurrentNames=fileNames.txt"
erase "%CurrentNames%"
dir folders  >> "%CurrentNames%" /B


