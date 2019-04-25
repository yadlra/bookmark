# bookmark_challenge
```
As a user,
So that I can quickly access my favourite websites,
I'd like see a list of bookmarks.
```


```
+-----------+              +-------------+               +---------------------+
|  User     +--GET-------->+  Controller +--.all-------->+  Model (Bookmark)   +
|           |              |             <--[bookmarks]--+---------------------+
|(bookmarks)|              |   app.rb    +--[bookmarks]-->-----------------------+
|            <--response---+             <--html---------+  View (erb bookmarks) +
+-----------+              +-------------+               +-----------------------+
```
```
Connect to psql
Create the database using the psql command CREATE DATABASE bookmark_manager;
Connect to the database using the pqsl command
Run the query we have saved in the file 01_create_bookmarks_table.sql
```
## To set up the database

<!-- Connect to `psql` and create the `bookmark_manager` database: -->
Connect to `psql` and create the `bookmark_manager` and `bookmark_manager_test` databases:

```
CREATE DATABASE bookmark_manager;
CREATE DATABASE bookmark_manager_test;
```

<!-- To set up the appropriate tables, connect to the database in `psql` and run the SQL scripts in the `db/migrations` folder in the given order. -->
To set up the appropriate tables, connect to each database in `psql` and run the SQL scripts in the `db/migrations` folder in the given order.

## To run the Bookmark Manager app:

```
rackup -p 3000
```
To view bookmarks, navigate to `localhost:4567/bookmarks`.
