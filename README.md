# spriteCloudAssignment

Amaze spriteCloud! By displaying not only my hard and soft skill-sets, but also who I am as a Automation Engineer!

Assignment Deliverables

# a. How to run the tests locally
- Clone existing script repository from remote server to local machine.
- Download Python (www.python.org) with pip installation
- Install Robot Framework (cmd pip install robotframework)
- Install seleniumlibrary (cmd pip install robotframework-seleniumlibrary)
- Install request library for API requests (cmd pip install robotframework-requests)
- Install selenium webdrivers (create c:\bin, add to PATH (Advanced systems settings> environment variables> add new path) selenium.org to download drivers)
- Install Pycharm IDE (jetbrains.com> tools> pycharm> download now) and IntelliBot plugin (file> settings> plugin> IntelliBot 
- Pycharm community edtion main page, click on "Check out from Version Control"> Select Github
- Using pycharm go to File> Settings> Version Control> Github> Login to Github account


# b. How to run the test in a CI/CD pipeline;
- Master only setup. Jenkins server created for test runs which has Jenkins + RF + Git integration
- Server will reach out to Git, grab scripts, pull down to server, and run locally in selected browser.
- Jenkins will get the source code for test scripts from the Git repository
- Install Jenkins (http://jenkins.io) and follow all the prompts.
- Open brwoser to localhost:8080/
- Install RF plugin (Manage Jenkins> Manage plugins> Available)
- 


# c. Has a link to the results in Calliope.pro;

# d. Describe one improvement point and one new feature for the Calliope.pro platform;

Improvement:
- No Login link/button ontop of Calliope.pro home page, only a Signup link/button. Login link/button is only displayed at the bottom of the Home page.

One new feature:
- Add a dashboard page functionallity wheres a user can manage (Add, Remove, Edit) the panels displayed on the dashboard. 

# e. What you used to select the scenarios, what was your approach?;

# f. Why are they the most important;

# g. What could be the next steps to your project;
Next steps to the spriteCloud project would be:
- To fully integrate Calliope.pro into the projects Jenkins and Github pipeline.
- To increase test coverage.
- To automate all test cases created.
- To maintain automation test scripts.
- To manage and maintain CI/CD pipeline.
- To provide assistance to those who will be using the project and adding to the automation coverage.
- To maintain documentation of project.

