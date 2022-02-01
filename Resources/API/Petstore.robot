*** Settings ***
Library    RequestsLibrary
Library    SeleniumLibrary
Library    Collections

#Suite Setup    Create Session    petstore    url=https://petstore.swagger.io/v2/
*** Variables ***
${url}    https://petstore.swagger.io/v2

*** Keywords ***
Available Pets
    #GET Request
    ${response}=      G  url=${url}/pet/findByStatus?status=available
    #Validate Response
    Status Should Be    200

Pending Pets
    #GET Request
    ${response}=    GET  url=${url}/pet/findByStatus?status=pending
    #Validate Response
    Status Should Be    200

Sold Pets
    #GET Request
    ${response}=    GET  url=${url}/pet/findByStatus?status=sold
    #Validate Response
    Status Should Be    200

Add Pet
    #GET Request
    ${body}=    create dictionary    category:id=1    category:name=DOG
    ${response}=    POST  url=${url}/pet    json=${body}    #header=${header}
    #Validate Response
    Status Should Be    200
    Status Should Be    200