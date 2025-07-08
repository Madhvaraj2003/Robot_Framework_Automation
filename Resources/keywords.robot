* Settings *
# Importing selenium library for browser automation
Library           SeleniumLibrary

* Variables *
# Apllication URL
${URL}            https://robotsparebinindustries.com
# Going to use chrome as a browser
${BROWSER}        Chrome
# Logins with username and password
${USERNAME}       maria
${PASSWORD}       thoushallnotpass
# Used to fill the form
${FIRST_NAME}     Madhva
${LAST_NAME}      Raj
${SALES_RESULT}   90

* Keywords *
Open Browser To Login Page
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Element Is Visible    id:username

Input Valid Credentials And Submit
    Input Text    id:username    ${USERNAME}
    Input Text    id:password    ${PASSWORD}
    Click Button    css:button[type="submit"]
    Wait Until Element Is Visible    id:firstname    timeout=10s
    Wait Until Element Is Enabled    id:firstname

Fill Sales Form And Submit
    Input Text    id:firstname     ${FIRST_NAME}
    Input Text    id:lastname      ${LAST_NAME}
    Input Text    id:salesresult   ${SALES_RESULT}
    Click Button  xpath=//button[@type="submit"]

Validate Sales Entry Appeared
    Wait Until Page Contains    ${FIRST_NAME} ${LAST_NAME}    timeout=10s
    Page Should Contain         ${SALES_RESULT}
# Its works as assertion where, after submiting the form  this xpath element will be visible    
    Page Should Contain Element  xpath= //*[@id="root"]/div/div/div/div[2]/div[3]/button[2]     

Logout From Application
    Wait Until Element Is Visible    css:.btn.btn-danger
    Click Element    css:.btn.btn-danger  
# Closes the Browser       
    Close Browser