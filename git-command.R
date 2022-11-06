
# some of command in git version, "2022-11-06 22:10:00 CST" change in website
git config --global user.name "Lei-Jue"
git config --global user.email "leijue1999@gmail.com"
git config --global --list

#3) Push an existing repository
#from the RStudio menu, follow:
#  Tools -> Terminal -> New Terminal
#enter the following lines in the Terminal
#with your username and repository name
git remote add origin https://github.com/Lei-Jue/AFEC-2022.git
# if false, try to replace origin to dev. from https://komodor.com/learn/how-to-fix-fatal-remote-origin-already-exists-error/
git remote add dev https://github.com/Lei-Jue/AFEC-2022.git
git add .# add all file in folder to commit 
git commit -m "first commit"
git push -u dev master

git remote -v
#tit@mi MINGW64 /e/data/git (master)
#$ git remote -v
#dev     https://github.com/Lei-Jue/AFEC-2022.git (fetch)
#dev     https://github.com/Lei-Jue/AFEC-2022.git (push)
#origin  https://github.com/Lei-Jue/AFEC_X_2022.git (fetch)
#origin  https://github.com/Lei-Jue/AFEC_X_2022.git (push)





