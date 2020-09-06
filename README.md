# HelloVaporFluent

Testing Vapor Fluent with Migrations on Heroku. For details on deploying to Heroku, check [HelloVapor](https://github.com/RobertoMachorro/HelloVapor).

## Local PostgreSQL Setup

```bash
CREATE USER docker;
CREATE DATABASE docker;
GRANT ALL PRIVILEGES ON DATABASE docker TO docker;
ALTER USER user_name WITH PASSWORD 'password';
```
