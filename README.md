# Data Warehouse Final Project

This project was created to fulfill the requirements for the Data Warehouse course's final project. It utilizes the Chinook database (https://github.com/lerocha/chinook-database) as its data source and implements TOS (Talend Open Studio) as its ETL software.

## Prerequisites

- go-migrate (install to path or just download the binary and put it on root project folder)
- PostgreSQL 14.5 (as both the data source and data warehouse)
- Talend Open Studio 8.0.1

## Database Design

### Data source (Chinook)

![Chinook-model](https://github.com/dnabil/CHINOOK_DATAWAREHOUSE_TOS/blob/main/Chinook-model.png)

### Datawarehouse

![datawarehouse-model](https://github.com/dnabil/CHINOOK_DATAWAREHOUSE_TOS/blob/main/datawarehouse-model.png)

## Getting Started

1. Install [chinook](https://github.com/lerocha/chinook-database) database (PostgreSQL)
2. install [go-migrate](https://github.com/golang-migrate/migrate) using scoop (windows)/etc
3. Clone this project to your TOS workspace
4. migrate datawarehouse db tables:

   run in root project `migrate -path migrations/datawarehouse -database "conn string" -verbose up`

   conn string format: postgresql://username:password@localhost:5432/dbname?sslmode=disable

   example: postgresql://postgres:@localhost:5432/datawarehouse?sslmode=disable

   _make sure 'public' schema exists!_

5. Did some changes to Chinook database, to apply the changes:

   run in root project `migrate -path migrations/Chinook -database "conn string" -verbose up`

   conn string format: postgresql://username:password@localhost:5432/dbname?sslmode=disable

   example: postgresql://postgres:@localhost:5432/Chinook?sslmode=disable

   _make sure 'public' schema exists!_

6. Update the metadata for the Chinook and datawarehouse databases to match your PostgreSQL credentials (in TOS).
