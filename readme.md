# Introduction

Time Tracker is an Oracle APEX application created to simplify project / task time tracking.

I'm working in the company where we are charging time spent on projects on bi-weekly basis and I'm lucky that overtimes are payed. This means that for me it is very important to know how much overtimes I have, when I have to submit my hours using company tools.

## History

### Version 1

In the past I've used an Excel file created by one of my colleague which looked like this:

![Excel Time Sheet](./docs/images/original.png)

Each time I had to hit start/stop button to mark time when I started to work and when I finished work that day. This approach of course had some gaps, i.e. if I would like to track in more detail on which task I spent how much time, I had to mark this in some other column. The same situation was causing issues when I worked overtimes.

## Version 2

After serveral years of using this Excel application I decided to create new application. Since I'm an Oracle developer and huge fan Oracle APEX, the decission was to use Apex for this. At the time I hosted application on apex.oracle.com:

![Apex 1st App](./docs/images/apex_v1.png)

### Version 3

Application build in APEX was much more mature compared to Excel, hower I still had to hit two buttons to track start and stop for the task. Sometimes it was really boring and it was not possible to track time for more users. Third version of personal time tracking application was created.

![Apex 2nd App](./docs/images/apex_v2.png)

**Features:**

- Global reporting on separate page
- Tasks are displayed in the form of cards
  - When user clicks on the card, new time entry is created in database and old without end date is automatically closed
- Support for multiple (apex workspace) users

Currently I'm using this application on daily basis hosted on [Oracle Free Tier](https://www.oracle.com/cloud/free/) autonomous database.

## Used Technologies

- Oracle PL/SQL
- Oracle APEX 5.1

## Installation

At the time when I created this application I did think that code will be shared with others. This means that project doesn't have nice install script and project has to be deployed manually. If you want to deploy it, I assume that you are familiar with PL/SQL and Oracle native tools (SQL*Plus, SQLcl) and are able to install scripts manually as well as import application manually into your APEX instance.

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
