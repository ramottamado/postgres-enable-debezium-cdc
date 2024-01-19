CREATE ROLE dbz REPLICATION LOGIN;
CREATE ROLE replication_group;

GRANT replication_group TO postgres;
GRANT replication_group TO dbz;

ALTER TABLE postgres.public.customers
    OWNER TO replication_group;

GRANT CREATE ON DATABASE postgres TO replication_group;

SELECT grantee, privilege_type
FROM information_schema.role_table_grants
WHERE table_name = 'customers';

SHOW wal_level;