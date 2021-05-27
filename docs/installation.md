# Installation

At the time when I created this application I didn't think that code will be shared with others. This means that project doesn't have nice install script and project has to be deployed manually. If you want to deploy it, I assume that you are familiar with PL/SQL and Oracle native tools (SQL*Plus, SQLcl) and are able to install scripts manually as well as import application manually into your APEX instance.

Recommendation is to install components to new user:

```sql
create user time_tracker identified by time_tracker default tablespace users temporary tablespace temp;
alter user time_tracker quota unlimited on users;

grant
   create session,
   create sequence,
   create procedure,
   create type,
   create table,
   create view,
   alter session
to time_tracker;
```
