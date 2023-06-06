# How to run this locally

## Dependencies
To run this service locally, 
you need to run a PostgreSQL database in the background.

An example for this can be found in this folder with the __postgres-start__ script (both for PowerShell and for Bash),
which starts the database with Docker (with persisting in a volume called localdb - it should be created beforehand).

Take note, if you start this and the API applications on the same host, you should start one of them on a different host.
This can be done with the __server.port__ configuration key.

## Configuration
The database connection can be configured with the following keys:
* spring.datasource.url - should be in the following format: __jdbc:postgresql://<<address-of-the-database>>/<<name-of-the-scheme>>__
* spring.datasource.username - username for connection
* spring.datasource.password - password for connection

If the attached Docker example is used, the values are the following:
* spring.datasource.url = __jdbc:postgresql://localhost:5432/database__
* spring.datasource.username = user
* spring.datasource.password = password

An example starting command with compilation and packaging is included with the __app-start__ script (both for PowerShell and Bash).
Must be run from the pom.xml's folder.

## How to call
Copy the contents of the __openapi.yaml__ file to [an OpenApi editor](https://editor-next.swagger.io/) 
and try the endpoints out.

Or use the [Postman](https://www.postman.com/downloads/) collection in this folder.
