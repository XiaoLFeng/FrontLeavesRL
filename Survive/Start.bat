@ECHO OFF
title FrontLeaves Server Text CMD


::----���ÿ���ʹ���ڴ�
SET Money=2G

::----���ÿ�����������
SET Server=Paper-1.12.2.jar

::----���ÿ����Ż����������������޸ģ���
SET SetCanShu=-XX:+UseG1GC


cls
color b
echo  - - - - - -   
echo  ��ǰʱ�䣺%date% %tm1%��%TM2%��
@echo. -----------------------------------------------------------------
@echo.                      FrontLeavesRL������                                                                   
@echo.                     ��������������,��ȴ� 
@echo.        ���Ʒ������QQ��1144939537���������������������������
@echo.
@echo.           ע��:�رշ�����ǰ���ں�̨����Stop�����������
@echo.                      ������ܻ���ֻص����
@echo.                
@echo. -----------------------------------------------------------------
choice /t 2 /d y /n >nul
:RESTART
cls
color 79
@echo.   ��------------------------------------��
@echo.   �� By��С��xiao_lfeng  QQ��1144939537 ��
@echo.   ��------------------------------------��
@echo. 
@echo.- Ԥ������ǰ����׼��...
choice /t 1 /d y /n >nul
@echo. 
@echo.- [ ���ÿ����ڴ棺%Money% ]
@echo. 
@echo.- [ ���ÿ�������Ϊ��%Server% ]
@echo. 
@echo.- [ ���ÿ����Ż�������%SetCanShu% ]
@echo. 
@echo.- Ԥ�������������,׼������������,�������������ĵȴ�...
@echo.
@echo. ---------------------------------------------------------------
@echo.
color f
choice /t 1 /d y /n >nul

java -Xms128M -Xmx%Money% %SetCanShu% -jar %Server% nogui

color 4f
@echo. 
@echo. ----------------------------------------------------------
@echo.�� �������Ѿ��ر�,���������밴�����������Ҫ��ֱ��X������ ��
@echo. ----------------------------------------------------------
@echo. 


goto restart