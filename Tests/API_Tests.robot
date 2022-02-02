*** Settings ***
Documentation    These are some Petstore API tests for the spriteCloud TA Assignment
Resource    ../Resources/API/Petstore.robot

# Many ways to run
# robot -d results/api tests/API_Tests.robot
# robot -d results/api -i API tests
# robot -d results/api tests

*** Variables ***

*** Test Cases ***
Add a new user to the Petstore system
    [Tags]    API
    Add User

Get all available pets in the Petstore
    [Tags]    API
    Available Pets

Get all pending pets in the Petstore
    [Tags]    API
    Pending Pets

Get all sold pets in the Petstore
    [Tags]    API
    Sold Pets

Add pet to the Petstore
    [Tags]    API
    Add Pet