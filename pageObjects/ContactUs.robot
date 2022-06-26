*** Settings ***
Documentation         Homepage related keyword
Variables             contact_locator.yaml

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
    Element Should Be Visible   ${title_homepage}

Verify Homepage ContactUs Appears
    Click Element               ${contactus}

Verify Home ContactUs Appears
    Element Should Be Visible   ${home_contactus}

Select the dropdown list on the subject heading
    Element Should Not Be Visible   ${contact_id}
    Select From List By Index       ${contact_id}               1

Fill in the registered email address
    Input Text                      ${email_found}              my688623@gmail.com

Fill in the Order Reference
    Input Text                      ${order_id}                 1233

Fill in the Message
    #Textarea Value Should Be        //*[@id="message"] 
    ${textvalue}                    Get Text                    id=message         
    Input Text                      id=message                  ${textvalue}\nTestMessage                 
    #Input Text                      //textarea[@id="message"]                  mohon kenapa saya tidak bisa order pada id 1233
    #Textarea Should Contain         //textarea[@id="message"]                  mohon kenapa saya tidak bisa order pada id 1233
    sleep                           10s

Attach File
    Choose File                     ${file}                     D:/POM/TEST.jpg
    sleep                           10s
