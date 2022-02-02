*** Settings ***
Documentation    This is some basic info about the whole suite
Resource    ../Resources/Web/UITestingPlayground.robot

# Many ways to run
# robot -d results/web tests/UI_Tests.robot
# robot -d results/web -i UI tests
# robot -d results/web tests

*** Variables ***


*** Test Cases ***
Validate the UITAP tab in chrome browser
        [Tags]    UI Test
        Click on UITAP tab in chrome browser

Validate the Home tab in chrome browser
        [Tags]    UI Test
        Click on Home tab in chrome browser

Validate the Resource tab in chrome browser
        [Tags]    UI Test
        Click on Resources tab in chrome browser

Validate the Dynamic ID link
        [Tags]    UI Test
        Validate Dymanic ID link

Validate the Test Input link
        [Tags]    UI Test
        Validate Text Input link

*** Keywords ***