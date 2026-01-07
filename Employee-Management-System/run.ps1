# Employee Management System - Run Script (PowerShell)
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Employee Management System" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Check if MySQL is running
Write-Host "Checking MySQL service..." -ForegroundColor Yellow
$mysqlService = Get-Service -Name "MySQL*" -ErrorAction SilentlyContinue
if ($mysqlService) {
    Write-Host "MySQL Status: $($mysqlService.Status)" -ForegroundColor Green
} else {
    Write-Host "WARNING: MySQL service not found!" -ForegroundColor Red
    Write-Host "Please ensure MySQL is installed and running." -ForegroundColor Red
}
Write-Host ""

# Run the application
Write-Host "Starting application..." -ForegroundColor Green
java -Xmx512m -Xms256m -cp "build\classes;lib\mysql-connector-j-8.0.33.jar;lib\jcalendar-1.4.jar" employee.management.system.Splash

Write-Host ""
Write-Host "Application closed." -ForegroundColor Cyan
