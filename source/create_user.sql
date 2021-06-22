set define '&'
set verify off

prompt
prompt
prompt Time Tracker create schema script.
prompt You will be prompted for a username, tablespace, temporary tablespace and password.
prompt


define tt_tablespace=users
accept tt_tablespace char default &tt_tablespace prompt 'Tablespace for the new schema    [Default: &tt_tablespace] :'

define temp_tablespace=temp
accept temp_tablespace char default &temp_tablespace prompt 'Temporary tablespace for the new schema  [Default: &temp_tablespace] :'

accept tt_user char prompt 'Specify schema to create :'

accept passwd char prompt 'Enter a password for the schema :' HIDE

create user &tt_user identified by &passwd default tablespace &tt_tablespace temporary tablespace &temp_tablespace;

alter user &tt_user quota unlimited on &tt_tablespace;

grant
   create session,
   create sequence,
   create procedure,
   create type,
   create table,
   create view,
   alter session
to &tt_user;
/

prompt
prompt
prompt Time Tracker user successfully created.
prompt Important!!! Connect as the "&tt_user" user and run the install.sql and install_apex.sql scripts.
prompt
prompt

exit
