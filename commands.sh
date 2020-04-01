start chrome "https://www.minorplanetcenter.net/iau/MPEph/MPEph.html" & export pidChrome1=$!
./Planet_Data_Request.exe
./planet_hunt.sh

git add -A
git commit -m "More Data"
git push origin master

./Data_Sorting

git add -A
git commit -m "Update Current"
git push origin master

kill -TERM $pidChrome1

stop chrome