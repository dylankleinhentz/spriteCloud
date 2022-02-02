*** Settings ***
Library    RequestsLibrary
Library    SeleniumLibrary

#Suite Setup    Create Session    petstore    url=https://petstore.swagger.io/v2/pet/findByStatus
*** Variables ***
${LOGIN URL}      http://www.uitestingplayground.com
${BROWSER}        chrome


*** Keywords ***
Click on UITAP tab in chrome browser
        [Documentation]    Validate that the UITAP tab is clickable and navigates to the main page
        [Tags]    Functional Test

        #Pre conditions
        open browser    ${LOGIN URL}    ${BROWSER}
        wait until page contains    UI Test Automation Playground

        #Test case
        click link    xpath=/html/body/nav/a
        wait until page contains  UI Test Automation Playground
        #Validate image
        page should contain image    xpath=//*[@id="description"]/div/div/div[2]/img
        #Validate elements on main page
        element text should be    xpath=//*[@id="citation"]/p    Quality is not an act, it is a habit.
        element text should be    xpath=//*[@id="description"]/div/div/div[1]/div/span    The purpose of this website is to provide a platform for sharpening UI test automation skills. Use it to practice with your test automation tool. Use it to learn test automation techniques.
        element text should be    xpath=//*[@id="description"]/div/div/div[1]/p    Different automation pitfalls appearing in modern web applications are described and emulated below.

        #Post condition
        close browser

Click on Home tab in chrome browser
        [Documentation]    Validate that the Home tab is clickable and navigates to the main page
        [Tags]    Functional Test

        #Pre conditions
        open browser    ${LOGIN URL}    ${BROWSER}
        wait until page contains    UI Test Automation Playground

        #Test case
        click link    xpath=//*[@id="navbarSupportedContent"]/ul/li[1]/a
        wait until page contains  UI Test Automation Playground
        #Validate image
        page should contain image    xpath=//*[@id="description"]/div/div/div[2]/img
        #Validate elements on main page
        element text should be    xpath=//*[@id="citation"]/p    Quality is not an act, it is a habit.
        element text should be    xpath=//*[@id="description"]/div/div/div[1]/div/span    The purpose of this website is to provide a platform for sharpening UI test automation skills. Use it to practice with your test automation tool. Use it to learn test automation techniques.
        element text should be    xpath=//*[@id="description"]/div/div/div[1]/p    Different automation pitfalls appearing in modern web applications are described and emulated below.

        #Post condition
        close browser

Click on Resources tab in chrome browser
        [Documentation]    Validate that the Resources tab is clickable and navigates to the resource page
        [Tags]    Functional Test

        #Pre conditions
        open browser    ${LOGIN URL}    ${BROWSER}
        wait until page contains    UI Test Automation

        #Test case
        click link    xpath=//*[@id="navbarSupportedContent"]/ul/li[2]/a
        wait until page contains  Resources
        element text should be    xpath=/html/body/section/div/h3    Resources
        element text should be    xpath=/html/body/section/div/h4[1]    Learning
        element text should be    xpath=/html/body/section/div/h4[2]    Standards
        element text should be    xpath=/html/body/section/div/h4[3]    Articles
        element text should be    xpath=/html/body/section/div/h4[4]    Community

        #Post condition
        close browser

Validate Dymanic ID link
        [Documentation]    Validate that the Dynamic ID link is clickable, that it navigates to the Dynamic ID page and that the button is clickable
        [Tags]    Functional Test

        #Pre conditions
        open browser    ${LOGIN URL}    ${BROWSER}
        wait until page contains    UI Test Automation Playground

        #Test case
        #Validate Validate Dymanic ID link
        element text should be    xpath=//*[@id="overview"]/div/div[1]/div[1]/h3/a    Dynamic ID
        element text should be    xpath=//*[@id="overview"]/div/div[1]/div[1]/p    Make sure you are not recording dynamic IDs of elements
        click link    xpath=//*[@id="overview"]/div/div[1]/div[1]/h3/a

        #Validate Dynamic ID page
        element text should be    xpath=/html/body/section/div/h3    Dynamic ID
        element text should be    xpath=/html/body/section/div/p   Modern applications often generate dynamic IDs for elements. In this case ID is not a reliable attribute for using in element selector. By default many UI automation tools record IDs and this results in tests broken from the very beginning. An automation tool needs a way to instruct it to skip dynamic IDs when XPath is generated for an element.
        element text should be    xpath=/html/body/section/div/h4[1]    Scenario
        element text should be    xpath=/html/body/section/div/ul/li[1]    Record button click.
        element text should be    xpath=/html/body/section/div/ul/li[2]    Then execute your test to make sure that ID is not used for button identification.
        element text should be    xpath=/html/body/section/div/h4[2]   Playground
        click button    Button with Dynamic ID

        #Post condition
        close browser

Validate Text Input link
        [Documentation]    Validate that the Text Input link is clickable, that it navigates to the Text Input page and that the button text can be changed to something new
        [Tags]    Functional Test

        #Pre conditions
        open browser    ${LOGIN URL}    ${BROWSER}
        wait until page contains    UI Test Automation Playground

        #Test case
        #Validate Validate Text Input link
        element text should be    xpath=//*[@id="overview"]/div/div[2]/div[4]/h3/a   Text Input
        element text should be    xpath=//*[@id="overview"]/div/div[2]/div[4]/p    Entering text into an edit field may not have effect
        click link    xpath=//*[@id="overview"]/div/div[2]/div[4]/h3/a

        #Validate Text Input page
        element text should be    xpath=/html/body/section/div/h3    Text Input
        element text should be    xpath=/html/body/section/div/p   Entering text with physical keyboard can be different from sending DOM events to an element. This page is specifically desined to illustrate this problem. There are cases when attempts to set a text via DOM events lead to nowhere and the only way to proceed is to emulate real keyboard input at OS level.
        element text should be    xpath=/html/body/section/div/h4[1]    Scenario
        element text should be    xpath=/html/body/section/div/ul/li[1]    Record setting text into the input field and pressing the button.
        element text should be    xpath=/html/body/section/div/ul/li[2]    Then execute your test to make sure that the button name is changing.
        element text should be    xpath=/html/body/section/div/h4[2]   Playground
        element text should be    xpath=/html/body/section/div/form/div/label    Set New Button Name
        input text    id=newButtonName    Testing Button
        click button    xpath=//*[@id="updatingButton"]
        element text should be    xpath=//*[@id="updatingButton"]    Testing Button

        #Post condition
        close browser