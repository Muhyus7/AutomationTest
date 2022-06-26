*** Settings ***
Documentation         Homepage related keyword
Variables             order_locator.yaml

*** Variables ***
${HOMEPAGE_URL}     http://automationpractice.com/index.php

*** Keywords ***
Open Browser Chrome
    Open Browser        browser=chrome    url=${HOMEPAGE_URL}

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
    Input Text                  ${email_found}          my688623@gmail.com

Input Password
    Input Text                  ${input_pass}           test1234

Click Signin
    Click Element               ${click_signin}
    
Click To Homepage YourLogo Appears
    Click Element               ${logo}

Click Select Items To Buy 
    Click Image                     ${image}
    Wait Until Element Is Enabled   ${wait_image}
    sleep                           10s

#Verify Page Buy for Click Blouse
#    Element Should Contain      //div[@class="pb-center-column col-xs-12 col-sm-4"]                      Blouse

Input Quantity To Buy 
    #Switch Window                   //*[@class="primary_block row"]                                 
    Click Element                   ${quantity}                   
Input Size To Buy
    Element Should Not Be Visible   ${size}
    Select From List By Index       ${size}                      2 
Choose Color
    Click Element                   ${color}
Click Add To Cart       
    Click Element                   ${cart}      

    
