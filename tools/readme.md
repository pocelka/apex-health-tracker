# Tools

Files in this folder are used for multiple purposes. For proper functionality create `secret.sh` script in this folder with the following content:

```bash
#!/bin/bash

export DB_USER= #DB user name
export DB_PASS= #DB password
export DB_TNS= #TNS name or EZ connect string in format //server:port/service_name
export SQL= #path to SQLcl
```

## Files

| File           | Description                                          |
| -------------- | ---------------------------------------------------- |
| functions.sh   | Script with various helper functions                 |
| apex_export.sh | This script exports APEX application in split format |