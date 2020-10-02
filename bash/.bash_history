gb
gs
ga "models/builders/minisudokubuilder.ts" 
ga "models/builders/testgamebuilder.ts" 
gs
gcm "Amended game builder so they have white backgrounds and the main builder has real (if still hardcoded) data"
cls
gs
gaa
gs
gcm "Made it so that fixed cells cannot be selected"
cls
gs
git switch dev
gb
git merge only_activated_non_fixed 
gb
git branch -d only_activated_non_fixed 
gb
gs
gaa
gcm "Added a light purple color and made it the default for the minisudoku builder"
cls
gs
cls
gl
cls
git push origin dev
exit
pcd
npm start
exit
mydate 10
t
exity
exit
exit
vifm
exit
pcd
npm test
exit
pcd
gs
cls
gs
git add .
cls
gs
gcm "Update component creation test and created a mock Mediator"
gs
git checkout -b set-neighbours
cls
gs
gs
exit
pcd
npm start
exit
pcd
nv
exit
mydate 10
exit
exit
npm test
cls
pcd
npm test
exit
pcd
nv
exit
pcd
npm start
exit
pcd
gs
gl
cls
exit
pcd
gs
cls
vifm
exit
pcd
nv
exit
pcd
gs
gb
gd app.ts
ga app.ts
cls
gs
gd ../index.html 
ga ../index.html 
cls
gs
gd interfaces/IMediator.ts 
ga interfaces/IMediator.ts 
cls
gs
gd models/mediators/mock_mediator.ts 
ga models/mediators/mock_mediator.ts 
cls
gs
gd utility.ts 
cls
gs
gaa
cls
gs
gb
gcm "Added neighbours to cells during builder scaffolding, and added keybard navigation of cells on the board."
cls
gs
git switch dev
git merge set-neighbours 
gb
git branch -d set-neighbours 
cls
ls
cls
gs
git push origin dev
gs
cls
git checkout -b cleanup
gb
gs
git push origin cleanup
gs
gaa
cls
gs
gs
gaa
cls
gs
gcm "Delted a heap of old code and had a general tidy up"
cls
gs
git push origin cleanup
gb
gs
git fetch origin dev
cls
gs
git switch dev
gs
git fetch origin dev
gs
gb
git pull origin dev
cls
gs
gb
git branch -d cleanup 
cls
gs
gb
gs
gaa
gcm "Added a thicker border to the canvas"
cls
gs
gs
gs
gd app.ts 
cls
gs
ga app.ts 
gaa
gcm "Passing data into the builder"
gs
git push origin dev
cls
gs
gs
gs
gaa
gcm "Added ascii for 1,2,3 and 4 to utility class"
git push origin dev
cls
gl
cls
gs
ga utility.ts 
gs
gcm "Updated utility keycodes as I had used ascii text values by mistake and not keycodes"
gs
gd models/mediators/minisudoku_mediator.ts 
gaa
gcm "Added keyhandlers for number entry"
cls
gs
git push origin dev
exit
pcd
mydate 10
cls
npm start
exit
pcd
npm test
exit
mydate 9
t
exit
afplay
exit
pcd
gs
gd utility.ts 
gl
cls
gf
gd
gaa
gs
gcm "Added VIM keys for navigating mini sudoku board, and updated mediator with handling code"
cls
gs
gb
git push origin dev
cls
gs
git status -v
cls
gs
git status
nv
nv
exit
exit
node
cls
node
exit
pcd
npm test
exit
gs
pcd
cls
gs
gs
gs
ls
..
ls
nv README.md 
gpr
pcd
app
cls
gpr
nv
git pull origin dev
..
nv README.md 
app
cls
gs
gb
git checkout -b for-loop-builder
gb
gs
gaa
gcm "Completed user values entry. A board can now be navigated and completed"
cls
gs
gb
git switch dev
git merge for-loop-builder 
gs
gb
git branch -d for-loop-builder 
cls
git push origin dev
cls
exit
pcd
npm start
exit
pcd
nv
exit
mydate 9
cls
exit
nv
exit
pcd && npm test
exit
pcd
gs
gb
exit
pcd
npm start
exit
pcd
nv
exit
vifm
exit
mydate 9
exit
exit
exit
node -v
exit
pcd
nv
exit
pcd
gs
yarn
yay yarn
cl
cls
exit
pcd
npm start
exit
pcd
npm test
exit
mydate 9
exit
sudo pacman -Syu
reboot
mydate 10
exit
exit
npm -v
node -v
yarn -v
yay yarn
exit
pcd
gs
gd app.ts
gb
cls
npm install -g yarn
sudo npm install -g yarn
cls
yarn -v
npm install -g yarn
sudo npm install -g yarn
sudo npm install -g npm
cls
sudo npm install -g yarn
yarn --version
cls
ls
..
..
ls
..
ls
mkdir Gridsome
cls
ls
Gridsome/
cls
ls
lsl
lsa
cls
yarn global add @gridsome/cli
gridsome -v
gridsome create gridsome-typscript
exit
gridsome -v
gridsome create gridsome-typscript
yarn global add @gridsome/cli
gridsome
npm install --global @gridsome/cli
sudo npm install --global @gridsome/cli
gridsome -v
cls
Projects/
Gridsome/
cls
gridsome create gridsome-typscript
ls
cd gridsome-typscript/
ls
cls
gs
ls
touch .gitignore
nv .gitignore 
gs
git init
cls
gs
git status
gs
nv
~
exit
pcd
ls
Projects/
ls
nv
cls
exit
pcd
nv
exit
pcd
nv
exit
pcd
nv
exit
pcd
nv
exit
pcd
pwd
Projects/
Gridsome/
gridsome-typscript/
pwd
nv
exit
pcd
cd /home/martin
cd /home/martin/Projects/
~
cd /home/martin/Projects/Gridsome/gridsome-typscript/
cls
ls
gs
cls
git status
gaa
git status
gcm "Initialised after gridsome create"
cls
git status
git status
nv package.json 
git status
gd gridsome.config.js 
cls
git status
gaa
cls
git status
git status
gaa
git status
gcm "Manually updated to use typescript"
cls
git status
git status
gaa
git status
gcm "Update title"
cls
gs
git remote -v
git status
gb
git checkout -b dev
git status
ifconfig
ipconfig
if-config
cls
git status
git switch master
it status
git status
git merge dev
git remote add origin git@github.com:ChromaticRanger/gridsome-test.git
git branch -M main
git push -u origin main
gs
git remote
nv
exit
pcd
Projects/Gridsome/gridsome-typscript/
gs
git remotes
git remote
git status
nv
gs
exit
gs
git status
nv
gs
exit
