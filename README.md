# Robot with MSSQL

Base on ppodgorsek/robot-framework

## Build
docker build -t tumit/robotframework-mssql:1.2 .

## Run
docker run --rm \
    -v /Users/tumit/github.com/tumit/robotframework-mssql/reports:/opt/robotframework/reports:Z \
    -v /Users/tumit/github.com/tumit/robotframework-mssql/blazedemo.com.robot:/opt/robotframework/tests/testcases.robot:Z \
    -e ROBOT_OPTIONS="-v REMOTE_URL:http://selenium-hub:4444/wd/hub" \
    -e BROWSER=chrome \
    tumit/robotframework-mssql
