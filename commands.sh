start chrome "https://www.minorplanetcenter.net/iau/MPEph/MPEph.html"
./Planet_Data_Request.exe
./planet_hunt.sh
sleep 10

git add -A
git commit -m "More Data"
git push origin master

sleep 2

./Data_Sorting_MAJOR.exe
./Data_Sorting_MINOR.exe

git add -A
git commit -m "Update Current"
git push origin master
