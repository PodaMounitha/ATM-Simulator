# ATM Simulator (Java Swing)

This is a NetBeans/Ant Java Swing project.

## Run (PowerShell)

1. Open PowerShell in the project folder.
2. Run:

```powershell
./scripts/run.ps1
```

This will:
- Download required libraries into `lib/` (MySQL Connector/J + JCalendar)
- Compile the sources (Java 17)
- Launch the app (`SRM.Login`)

## Notes

- The database connection is configured in `src/SRM/Conn.java`.
