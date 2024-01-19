# Enable Debezium CDC for PostgreSQL

## PostgreSQL Config

1. Add the following line (or uncomment) to `postgresql.conf`:
   ```text
   wal_level = logical
   ```
2. Add the following lines to `pg_hba.conf`
   ```text
   local   replication     all                                     trust
   host    replication     all             127.0.0.1/32            trust
   host    replication     all             ::1/128                 trust
   ```