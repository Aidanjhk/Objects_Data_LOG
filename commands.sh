
start chrome "https://www.minorplanetcenter.net/iau/MPEph/MPEph.html"
sleep 1
./Planet_Data_Request.exe
./planet_hunt.sh

git add -A
git commit -m "More Data"
git push origin master

sleep 2

./Data_Sorting_MAJOR.exe
./Data_Sorting_MINOR.exe
./Data_Sorting.exe
sleep 6

./Pre_Process.exe

git add -A
git commit -m "Update Current"
git push origin master