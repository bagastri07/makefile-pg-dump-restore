PG_HOST ?= localhost
PG_PORT ?= 5432
PG_USER ?= user
PG_DB ?= test
PG_DUMP_FILE ?= ./dump/$(file)-$(shell date +%d-%b-%y)
PG_RESTORE_FILE ?= ./dump/$(file)

backup:
	pg_dump -h $(PG_HOST) -p $(PG_PORT) -U $(PG_USER) -d $(PG_DB) -F c -b -v -f $(PG_DUMP_FILE)

restore:
	pg_restore -h $(PG_HOST) -p $(PG_PORT) -U $(PG_USER) -d $(PG_DB) -v $(PG_RESTORE_FILE)
