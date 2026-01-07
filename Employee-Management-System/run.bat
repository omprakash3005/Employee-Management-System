@echo off
REM Employee Management System - Run Script
echo ========================================
echo Employee Management System
echo ========================================
echo.

REM Check if MySQL is running
echo Checking MySQL connection...
echo.

REM Run the application
echo Starting application...
java -Xmx512m -Xms256m -cp "build\classes;lib\mysql-connector-j-8.0.33.jar;lib\jcalendar-1.4.jar" employee.management.system.Splash

echo.
echo Application closed.
pause
