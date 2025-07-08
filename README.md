Robot Framework Login & Form Automation
This project automates the login, sales form submission, validation, and logout process for robotsparbinindustries.com using Robot Framework with SeleniumLibrary. Includes keyword-driven test cases and validations.

The automation covers:

Logging into the portal

Submitting a sales entry form

Validating the form submission

Logging out and verifying return to the login page



---

📌 Features

🔐 Login Automation using valid credentials

🧾 Sales Form Submission (First Name, Last Name, Sales Target)

✅ Validation of submitted sales data

🔄 Logout with verification

♻️ Keyword-Driven Testing for reusability and clean structure

🌐 Browser automation with SeleniumLibrary



---

🧪 Test Flow

1. Launch browser and navigate to the site


2. Input username and password


3. Click login and verify successful login


4. Fill the sales form with:

First name

Last name

Sales target

Submit the form



5. Validate that the data appears in the sales results


6. Click Logout


7. Verify return to login page


8. Close browser




---

🧰 Tech Stack

Tool	Purpose

Robot Framework	Test automation framework
SeleniumLibrary	Web interaction and automation
Python	Base environment
VS Code / PyCharm	Recommended IDEs



---

📂 Project Structure

PAT_Robot/
│
├── resources/
│   └── keywords.robot        # Reusable keywords
│
├── Tests/
│   └── login_logout_test.robot  # Main test case
│
├── output.xml               # Robot Framework output
├── log.html                 # Detailed execution log
├── report.html              # Test result summary
├── README.md                # Project documentation


To Run this testcase in terminal Type: robot Tests/login_logout_test.robot

Outcome:

This automation ensures the critical user flows — login, form submission, and logout — are functioning correctly, reducing manual QA effort and improving test reliability
