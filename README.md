# docker-docker-compose-and-kasm-installer

Make it executable: 
```
chmod +x install.sh
```
Run the script: 
```
sudo ./install.sh
```
Please note that this repository wont be updated regularly so if you get any errors like this 
```
kasm_db_1.16.0
Container kasm_db Creating
Container kasm_db Created
Container kasm_db Starting
Container kasm_db Started
Container kasm_db Waiting
Container kasm_db Healthy
2024-09-28 12:51:23,489 [INFO] root: Performing Database Connectivity Test
2024-09-28 12:51:23,509 [INFO] root: Initializing Postgres Database
2024-09-28 12:51:25,145 [INFO] root: Stamping Database with revision
Traceback (most recent call last):
File "server.py", line 301, in <module>
File "initialize_postgres_db.py", line 349, in populate_production
File "initialize_postgres_db.py", line 337, in populate_production_ex
Exception: Error: Seed alembic_version: (fce372e8702c) does not match expected (4ed1c013967f)
[1] Failed to execute script 'server' due to unhandled exception!
```

update the links according to the https://kasmweb.com/docs/latest/index.html. thanks


credits to [shadow](https://discord.com/users/1116705678745141339) for the code
