start chrome "https://www.minorplanetcenter.net/iau/MPEph/MPEph.html"
./Planet_Data_Request.exe
./planet_hunt.sh

git add -A
git commit -m "More Data"
git push origin master

./Data_Sorting

git add -A
git commit -m "Update Current"
git push origin master

killall -q -15 chrome