# ATM Simulator (Java Swing)

## Overview

A simple ATM Simulator built using Java and Java Swing. The app provides a GUI for login and common ATM actions like balance enquiry, deposit, withdrawal, and mini statement.

## Features

- User login flow (Card Number + PIN)
- Balance enquiry
- Deposit / Withdraw
- Mini statement (transaction history)
- GUI built with Java Swing

## Run (PowerShell)

From the project folder:

```powershell
./scripts/run.ps1
```

This will:

- Download required libraries into `lib/` (MySQL Connector/J + JCalendar)
- Compile the sources (Java 17)
- Launch the app (`SRM.Login`)

## Notes

- This is a NetBeans/Ant project (see `build.xml` and `nbproject/`).
- The database connection is configured in `src/SRM/Conn.java` (MySQL).
