# Employee Management System - User Guide

## 🚀 Quick Start (3 Steps)

### Step 1: Set Up Database
Open MySQL Workbench and run this script:

```sql
CREATE DATABASE IF NOT EXISTS employeemanagementsystem;
USE employeemanagementsystem;

CREATE TABLE login (
    username VARCHAR(50) PRIMARY KEY,
    password VARCHAR(50) NOT NULL
);

CREATE TABLE employee (
    name VARCHAR(100),
    fname VARCHAR(100),
    dob VARCHAR(50),
    salary VARCHAR(50),
    address VARCHAR(200),
    phone VARCHAR(20),
    email VARCHAR(100),
    education VARCHAR(50),
    designation VARCHAR(100),
    aadhar VARCHAR(20),
    empId VARCHAR(10) PRIMARY KEY
);

INSERT INTO login VALUES ('admin', 'admin123');
```

### Step 2: Run the Application
Double-click: **`run.bat`**

### Step 3: Login
- **Username:** admin
- **Password:** admin123

---

## 📁 Project Structure

```
Employee-Management-System/
├── src/                          # Source code
│   ├── employee/management/system/
│   │   ├── Splash.java          # Entry screen
│   │   ├── Login.java           # Login screen
│   │   ├── Conn.java            # Database connection
│   │   ├── Home.java            # Main dashboard
│   │   ├── AddEmployee.java     # Add employee
│   │   ├── ViewEmployee.java    # View/search employees
│   │   ├── UpdateEmployee.java  # Update employee
│   │   └── RemoveEmployee.java  # Delete employee
│   ├── net/proteanit/sql/
│   │   └── DbUtils.java         # Table utility
│   └── icons/                   # Images (9 files)
├── build/classes/               # Compiled files
├── lib/                         # JAR dependencies
│   ├── mysql-connector-j-8.0.33.jar
│   └── jcalendar-1.4.jar
├── run.bat                      # Run script (Windows)
├── run.ps1                      # Run script (PowerShell)
└── setup_database.sql           # Database setup
```

---

## 🎯 How to Use

### Main Features

1. **Add Employee**
   - Click "Add Employee" button
   - Fill in employee details
   - Employee ID is auto-generated
   - Click "Add Details"

2. **View Employees**
   - Click "View Employees" button
   - See all employees in table
   - Search by Employee ID
   - Print table

3. **Update Employee**
   - Click "Update Employee" button
   - Select employee ID
   - Modify editable fields
   - Click "Update Details"

4. **Remove Employee**
   - Click "Remove Employee" button
   - Select employee ID
   - Click "Delete"

---

## ⚙️ Database Configuration

**Current Settings:**
- Host: localhost:3306
- Username: root
- Password: root
- Database: employeemanagementsystem

**To Change:**
Edit `src/employee/management/system/Conn.java` line 13, then recompile:
```bash
javac -d build\classes -cp "lib\mysql-connector-j-8.0.33.jar;lib\jcalendar-1.4.jar" -sourcepath src src\employee\management\system\Conn.java
```

---

## 🔧 Troubleshooting

### Can't connect to database
- Make sure MySQL is running
- Verify username/password (root/root)
- Run setup_database.sql

### Can't login
- Run setup_database.sql to create admin user
- Default: admin/admin123

### Application won't start
- Check Java is installed: `java -version`
- Make sure lib folder has both JAR files

---

## 📝 Notes

- Default login: admin/admin123
- Employee IDs are auto-generated (6-digit random numbers)
- All changes save to database immediately
- No undo function - be careful with delete!

---

## 🎓 Development Info

**Technology:**
- Java Swing (GUI)
- MySQL (Database)
- JDBC (Database connection)

**Requirements:**
- Java 17 or higher
- MySQL 5.7 or higher

**Run Command:**
```bash
java -cp "build\classes;lib\mysql-connector-j-8.0.33.jar;lib\jcalendar-1.4.jar" employee.management.system.Splash
```
