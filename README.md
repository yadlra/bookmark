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
```
Note:
How to create test database?
How to run psql commands for both databases?
```
