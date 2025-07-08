* Settings *
# Browser automation library
Library           SeleniumLibrary
# Reuses keywords from exterbal file
Resource          ../Resources/keywords.robot

* Test Cases *
# Main test case: Logs in, Submits the form, Validates the submission and logs out  
Verify Login Form Submission And Logout
    [Documentation]    Log in, fill and submit sales form, verify entry, and logout.
    Open Browser To Login Page
    Input Valid Credentials And Submit
    Fill Sales Form And Submit
    Validate Sales Entry Appeared
    Logout From Application