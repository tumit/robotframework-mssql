*** Settings ***
Library           DatabaseLibrary
Library           BuiltIn

*** Variables ***
${DB_HOST}        remotemysql.com
${DB_PORT}        3306
${DB_NAME}        pNCXBHIqFB
${DB_USER}        pNCXBHIqFB
${DB_PWD}         zPpzTsO6Nc

*** Keywords ***
Clear Investor
    [Arguments]    ${email}
    Connect to Database    pymysql    ${DB_NAME}    ${DB_USER}    ${DB_PWD}    ${DB_HOST}    ${DB_PORT}
    Execute Sql String    delete from profile where email = '${email}'
    Disconnect from Database
