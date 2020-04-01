start chrome "https://www.minorplanetcenter.net/iau/MPEph/MPEph.html" & export pidChrome1=$!
./Planet_Data_Request.exe
./planet_hunt.sh

git add -A
git commit -m "More Data"
git push origin master

./Data_Sorting.exe
./Data_synthesis.exe
git add -A
git commit -m "Update Current"
git push origin master
