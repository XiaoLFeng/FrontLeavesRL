@ECHO OFF
title FrontLeaves Server Text CMD


::----设置开服使用内存
SET Money=2G

::----设置开服核心名字
SET Server=Paper-1.12.2.jar

::----设置开服优化参数，不懂请勿修改！！
SET SetCanShu=-XX:+UseG1GC


cls
color b
echo  - - - - - -   
echo  当前时间：%date% %tm1%点%TM2%分
@echo. -----------------------------------------------------------------
@echo.                      FrontLeavesRL服务器                                                                   
@echo.                     服务器即将开启,请等待 
@echo.        定制服务端找QQ：1144939537（看你运气，我最近不打算做）
@echo.
@echo.           注意:关闭服务器前请在后台输入Stop保存玩家数据
@echo.                      否则可能会出现回档情况
@echo.                
@echo. -----------------------------------------------------------------
choice /t 2 /d y /n >nul
:RESTART
cls
color 79
@echo.   ┏------------------------------------┓
@echo.   ┣ By：小锋xiao_lfeng  QQ：1144939537 ┫
@echo.   ┗------------------------------------┛
@echo. 
@echo.- 预备开服前工作准备...
choice /t 1 /d y /n >nul
@echo. 
@echo.- [ 设置开服内存：%Money% ]
@echo. 
@echo.- [ 设置开服核心为：%Server% ]
@echo. 
@echo.- [ 设置开服优化参数：%SetCanShu% ]
@echo. 
@echo.- 预备开服工作完毕,准备启动服务器,开服过程请耐心等待...
@echo.
@echo. ---------------------------------------------------------------
@echo.
color f
choice /t 1 /d y /n >nul

java -Xms128M -Xmx%Money% %SetCanShu% -jar %Server% nogui

color 4f
@echo. 
@echo. ----------------------------------------------------------
@echo.╋ 服务器已经关闭,如需重启请按任意键，不需要请直接X掉本框 ╋
@echo. ----------------------------------------------------------
@echo. 


goto restart