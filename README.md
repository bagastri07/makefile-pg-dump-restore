# Makefile for PostgreSQL Backup and Restore

This Makefile provides commands to easily back up and restore a PostgreSQL database using `pg_dump` and `pg_restore`.

## Usage

### Backup
To create a backup, run:
```sh
make backup file=<backup_name>
```
Example:
```sh
make backup file=test
```
This will generate a backup file named `<file name input>-<timestamp>` in the `./dump/` directory.

### Restore
To restore from a backup, run:
```sh
make restore file=<backup_name>
```
Example:
```sh
make restore file=test-14-feb-25
```
This will restore from `./dump/<file name input>`.

## Configuration
You can override the default PostgreSQL connection parameters by setting environment variables:
```sh
PG_HOST=your_host PG_PORT=your_port PG_USER=your_user PG_DB=your_db make backup file=your_backup
```
