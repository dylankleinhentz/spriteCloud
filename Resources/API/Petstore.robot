*** Settings ***
Library    RequestsLibrary
Library    SeleniumLibrary
Library    Collections

#Suite Setup    Create Session    petstore    url=https://petstore.swagger.io/v2/
*** Variables ***
${url}    https://petstore.swagger.io/v2

*** Keywords ***
Add User
    #POST Request
    ${body}=    create dictionary    username=1    firstName=DYLAN
    ${resp}=    POST  url=${url}/user    json=${body}    #header=${header}
    ${json}=    set variable    ${resp.json()}
    #Validate Response
    Status Should Be    200
    Log    ${json}

Available Pets
    #GET Request
    ${resp}=      GET  url=${url}/pet/findByStatus?status=available
    ${json}=    set variable    ${resp.json()}
    #Validate Response
    Status Should Be    200
    Log    ${json}

Pending Pets
    #GET Request
    ${resp}=    GET  url=${url}/pet/findByStatus?status=pending
    ${json}=    set variable    ${resp.json()}
    #Validate Response
    Status Should Be    200
    Log    ${json}

Sold Pets
    #GET Request
    ${resp}=    GET  url=${url}/pet/findByStatus?status=sold
    ${json}=    set variable    ${resp.json()}
    #Validate Response
    Status Should Be    200
    Log    ${json}

Add Pet
    #POST Request
    ${body}=    create dictionary    category:id=555    category:name=DOG    name=DAISY
    ${resp}=    POST  url=${url}/pet    json=${body}
    ${json}=    set variable    ${resp.json()}
    #Validate Response
    Status Should Be    200
    should be equal as strings    ${json['name']}    DAISY
    Log    ${json}