# Bash Scripts

Three small Linux automation scripts I wrote while learning Bash. Each script checks its input, returns a proper exit code, and is commented.

## Scripts

| Script | What it does |
|---|---|
| `sitecheck.sh` | Reads websites from `sites.txt`, pings each one and reports UP or DOWN. Exits with 1 if any site is down. |
| `backup.sh` | Copies a folder into `~/tutorial-bash/backups/` with today's date in the name and prints how many files were copied. |
| `diskwarn.sh` | Warns if disk usage of `/` is above a limit (default 80%). |
