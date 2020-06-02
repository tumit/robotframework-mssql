*** Settings ***
Library           DatabaseLibrary
Library           BuiltIn

*** Variables ***
${DB_HOST}        yourhost
${DB_PORT}        3306
${DB_NAME}        yourdb
${DB_USER}        youruser
${DB_PWD}         yourpassword

*** Keywords ***
Clear Investor
    [Arguments]    ${email}
    Connect to Database    pymysql    ${DB_NAME}    ${DB_USER}    ${DB_PWD}    ${DB_HOST}    ${DB_PORT}
    Execute Sql String    delete from profile where email = '${email}'
    Disconnect from Database
