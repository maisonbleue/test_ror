# README

This is my ruby on rails project for a recruitment.

This README would normally document whatever steps are necessary to get the
application up and running.

Versions
---
The ruby on rail version : Rails 5.1.1
The database is : psql (PostgreSQL) 9.6.3

Run
---

To run the project you should :
```
$> bundle install
$> rake db:create
$> rake db:migrate
$> rails server
```

Routes
---

```
GET localhost:3000/manage_stock/index
GET localhost:3000/upate_stock/index?ref_stock='REF_STOCK'

API:

POST localhost:3000/api/v1/stocks
GET localhost:3000/api/v1/stocks/'REF_STOCK'
GET localhost:3000/api/v1/histo/'REF_STOCK'

```
