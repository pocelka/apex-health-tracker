# Installation & Un-Installation

Installation & Un-installation follows standard approach when installing custom components to database using command line native tools SQL*Plus or SQLcl. This installation guide assumes that you are familiar with these tools. Installation is split to the following blocks:

- User creation (Optional): It is recommended to install time tracker to new schema, however components can be also installed to any existing user.
- PL/SQL backend
- APEX front end

## User Creation (Optional)

To create new user ask your DBA to create the following script:

```bash
cd source
sqlcl [connection string] as sysdba @create_user.sql
```

## PL/SQL Backend

To install components, execute the following script as application owner:

```bash
cd source
sqlcl [connection string]
@install.sql
```

If no errors are produced in ```install.log``` file, back end installation is considered as successfully installed;

## APEX Front End

Ask your DBA to create a new APEX workspace, with option to re-use existing schema; schema created in previous step. At this moment application supports only authentication via application express accounts. Therefore, you will have to create users who will use this application manually as apex application users. Users are created by workspace administrator.

Once APEX workspace exists execute the following script:

```bash
cd source
sqlcl [connection string] @install_apex.sql
```

If no errors are produced in ```install_apex.log```. application is considered as successfully installed;

## Un-Installation

To un-install back end and front end components execute the following script as application owner:

```bash
cd source
sqlcl [connection string] @uninstall.sql
```

If no errors are produced in ```uninstall.log```, application is considered as successfully uninstalled;
