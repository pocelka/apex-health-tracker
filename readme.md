# Introduction

This repository contains my personal applications created in Oracle Application Express (Apex). These applications can be self-host either on premises or in Oracle Cloud Infrastructure (OCI) - [OCI Free Tier](https://www.oracle.com/cloud/free/#always-free).

## Installation

Applications can be installed under the new user or existing one. For new installation ask your DBA to create a new schema using create script:

```bash
sqlcl [connection string] as sysdba @create_user.sql
```

and afterwards new apex workspace should be created using this schema.
