# Robot with MSSQL
Base on ppodgorsek/robot-framework

## Build
docker build --no-cache -t tumit/robotframework-mssql:1.3 .

## Run
docker run --rm \
    -v /Users/tumit/github.com/tumit/robotframework-mssql:/opt/robotframework/reports:Z \
    -v /Users/tumit/github.com/tumit/robotframework-mssql:/opt/robotframework/tests:Z \
    -e BROWSER=chrome \
    tumit/robotframework-mssql:1.3
