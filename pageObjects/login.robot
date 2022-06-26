*** Settings ***
Documentation         Homepage related keyword
Variables             login_myacc_locators.yaml

*** Variables ***
${HOMEPAGE_URL}     http://automationpractice.com/index.php

*** Keywords ***
Open Browser Chrome
    Open Browser        browser=firefox    url=${HOMEPAGE_URL}

Verify Current Url Is Homepage Url
    [Documentation]             Verify current url is homepage url
    Location Should Be          ${HOMEPAGE_URL}

Verify Homepage Title Appears
    [Documentation]             Verify homepage title appears
    Element Should Be Visible   ${title_homepage1}

Verify The login page appears
    [Documentation]             Verify the login or registration page appears
    Click Element               ${title_signin}
    #Wait Until Element Is Visible   ${title_signin}
    
Verify Text Your personal information    
    Element Should Be Visible   ${personal_info}
    sleep                       5s                 

Input Email for username
    Input Text                  ${email_found}              my688623@gmail.com

Input Password
    Input Text                  ${input_pass}               test1234

Click Signin
    Click Element               ${click_signin}
    sleep                       10s 
    
Verify Page Success Login
    Element Should Be Visible   ${page_success}
