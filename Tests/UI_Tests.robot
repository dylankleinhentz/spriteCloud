*** Settings ***
Documentation    This is some basic info about the whole suite
Resource    ../Resources/Web/UITestingPlayground.robot

# Many ways to run
# robot -d results/web tests/UI_Tests.robot
# robot -d results/web -i UI tests
# robot -d results/web tests

*** Variables ***


*** Test Cases ***
Validate the UITAP tab
        [Tags]    UI Test
        Click on UITAP tab

Validate the Home tab
        [Tags]    UI Test
        Click on Home tab

Validate the Resource tab
        [Tags]    UI Test
        Click on Resources tab

Validate the Dynamic ID link
        [Tags]    UI Test
        Validate Dymanic ID link

*** Keywords ***