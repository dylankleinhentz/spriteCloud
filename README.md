# spriteCloudAssignment

This project has been created to Amaze spriteCloud!
Not only by displaying my hard and soft skill-sets, but also who I am as a Automation Engineer!

# Assignment Deliverables

- Environment and specs:

        ○  http://www.uitestingplayground.com/ (UI)
        ○  https://petstore.swagger.io/ (API)
- Scripting language: Python.
- Required testing tool: Pycharm, Selenium, Robot Framework.
- CI platform: Jenkins and Github.
- Calliope.pro account created.
-
# A. How to run the tests locally
- Clone existing script repository from remote server to local machine.
- Download Python (www.python.org) with pip installation
- Install Robot Framework (cmd pip install robotframework)
- Install seleniumlibrary (cmd pip install robotframework-seleniumlibrary)
- Install request library for API requests (cmd pip install robotframework-requests)
- Install selenium webdrivers (create c:\bin, add to PATH (Advanced systems settings> environment variables> add new path) selenium.org to download drivers)
- Install Pycharm IDE (jetbrains.com> tools> pycharm> download now) and IntelliBot plugin (file> settings> plugin> IntelliBot)
- Pycharm community edtion main page, click on "File> Open" and select the master directory file cloned into a file from Github.
- Expand the "Terminal" tab at the bottom.
- The file directory path will be displayed. Type in "robot tests" and hit enter/return.
- The test cases should start running locally.

# B. How to run the test in a CI/CD pipeline
- Jenkins server created for test runs which has Jenkins + RF + Github integration.
- Server will reach out to Github, grab scripts, pull down to server, and run locally in selected browser.
- Jenkins will get the source code for test scripts from the Github repository.

Pre-condition: Jenkins is already installed.
- Open browser and login with user credentials

        - Username: spriteCloudUser        
        - Password: spriteCloud1234        
- Once logged in, execute the run by clicking "Build schedule"
- View results once build is complete

# C. Has a link to the results in Calliope.pro
https://app.calliope.pro/reports/116185

# D. Describe one improvement point and one new feature for the Calliope.pro platform

Improvement:
- No Login link/button ontop of Calliope.pro home page, only a Signup link/button. Login link/button is only displayed at the bottom of the Home page.

One new feature:
- Add a dashboard page functionallity wheres a user can manage (Add, Remove, Edit) the panels displayed on the dashboard. 

# E. What you used to select the scenarios, what was your approach?

# F. Why are they the most important

# G. What could be the next steps to your project
Next steps to the spriteCloud project would be:
- To fully integrate Calliope.pro into the projects Jenkins and Github pipeline.
- To increase test coverage.
- To automate all test cases created.
- To maintain automation test scripts.
- To manage and maintain CI/CD pipeline.
- To provide assistance to those who will be using the project and adding to the automation coverage.
- To maintain documentation of project.
