@echo off
title 'My Game'
color 0A
if "%1" neq "" ( goto %1)
pause

:Menu
cls
echo Thug Life game
echo ---------------------------------------------
 
echo  o     o   o     o     o  o     o
echo  o     o    o   o o   o   o     o
echo  o     o     o o   o o    o     o
echo  ooooooo      o     o     ooooooo
 
echo ---------------------------------------------
echo 1. Start
echo 2. Instruction
echo 3. Close
echo ---------------------------------------------
set /p answer=Type the number of your option and press enter. 
if %answer%==1 goto Start_1
if %answer%==2 goto 'Instructions'
if %answer%==3 goto Exit

:Exit
echo Thanks for playing !
exit /b

:Instructions
cls
echo nab wibu 
echo.
pause
goto Menu

:Start_1
cls
echo Hello! What is your name? (one word)
set /p name= 
cls
echo %name% made a trouble with people. Their forces are:
echo 3 w33bs
echo You have a high chance of winning.
echo Select a number 
set /p answer=Fight them or run like a LATman? Select a number between 1, 2, or 3. 

if %answer%==1 goto Fight_1
if %answer%==2 goto Run_1
if %answer%==3 goto Weebs_1

:Run_1
cls
echo %name% ran away safely !
pause
goto Start_1

:Weebs_1
cls
echo %name% are not fast enough to run. They got you. You are a weebs now !
echo GAME OVER
pause
goto Menu

:Fight_1
cls
echo %name% have chosen to fight.
echo ---------------------------------------------
echo a knive fight, man.
echo ---------------------------------------------
set /p answer= Type number 1 and press enter to continue: 
if %answer%==1 goto Fight_1_Loop

:Fight_1_Loop
cls
echo
echo ---------------------------------------------
echo The w33bs use their power
echo ---------------------------------------------
set /p num= Type number between 1 to 4 : 

if %num%==1 goto Lose_Fight_1
if %num%==2 goto Win_Fight_1
if %num%==3 goto Win_Fight_1
if %num%==4 goto Win_Fight_1
:Lose_Fight_1
cls
echo Sorry, %name% lost the battle :(
pause
goto Menu
:Win_Fight_1
cls
echo Congrats, %name% won the fight!
set /p answer='Would you like to save?'
if %answer%=='Yes' goto 'Save'
if %answer%=='No' goto 'Start_2'
:'Save'
goto 'Start_2'
