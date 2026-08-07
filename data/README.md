# 1. Run the Postgres container

```
docker compose up -d
```

# 2. Wait for Postgres to be ready, then load the SQL file into chinook database

```
docker exec -i $(docker compose ps -q postgres) \
    psql -U admin -d chinook < ./data/Chinook_PostgreSql.sql
```

# 3. Verify it loaded

```
docker exec -it $(docker compose ps -q postgres) \
    psql -U admin chinook -c '\dt'
```
