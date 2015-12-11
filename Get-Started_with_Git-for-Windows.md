USING GIT FOR WINDOWS 

Download it here:
https://git-for-windows.github.io/

Install Using Defaults


Start "Git Bash"

$cd /c

$mkdir script

$cd scripts

$git clone https://github.com/sphughes/PowerShell.git

$ls -al 
   Note - You now have a PowerShell Directory
   
$cd PowerShell


EDIT .GIT/CONFIG

$vi ./.git/config  
   Change  
     url = https://github.com/sphughes/github_wiki.git  
   To  
     url = https://sphughes@github.com/sphughes/github_wiki.git
	 
Add some content ie. HelloWorld.md
	 
$git add *

$git commit -m "Initial Commit"

$git push

