start chrome "https://www.minorplanetcenter.net/iau/MPEph/MPEph.html" & export pidChrome1=$!
./Planet_Data_Request.exe
./planet_hunt.sh

git add -A
git commit -m "More Data"
git push origin master

./Data_Sorting_MAJOR.exe
./Data_Sorting_MINOR.exe

git add -A
git commit -m "Update Current"
git push origin master
