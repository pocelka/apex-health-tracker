set define '&'
set verify off

prompt
prompt
prompt Application create schema script.
prompt You will be prompted for a username, tablespace, temporary tablespace and password.
prompt


define app_tablespace=users
accept app_tablespace char default &app_tablespace prompt 'Tablespace for the new schema    [Default: &app_tablespace] :'

define temp_tablespace=temp
accept temp_tablespace char default &temp_tablespace prompt 'Temporary tablespace for the new schema  [Default: &temp_tablespace] :'

accept app_user char prompt 'Specify schema to create :'

accept passwd char prompt 'Enter a password for the schema :' HIDE

create user &app_user identified by &passwd default tablespace &app_tablespace temporary tablespace &temp_tablespace;

alter user &app_user quota unlimited on &app_tablespace;

grant
   create session,
   create sequence,
   create procedure,
   create type,
   create table,
   create view,
   alter session
to &app_user;
/

prompt
prompt
prompt Apex application user successfully created.
prompt Important!!! Connect as the "&app_user" user and run the install.sql and install_apex.sql scripts.
prompt
prompt

exit
