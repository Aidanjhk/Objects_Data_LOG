./Setup.exe
start chrome "https://www.minorplanetcenter.net/iau/MPEph/MPEph.html"

sleep 1
./Planets_Data_Request.exe
./planet_hunt.sh
./PRE.exe

sleep 4

./Data_Sorting_MAJOR.exe
#./Data_Sorting_MINOR.exe
./Data_Sorting.exe
sleep 6

#./Pre_Process.exe
#sleep 1
#./Pre_Process.exe

sleep 4
git add -A
git commit -m "Data"
git push origin master