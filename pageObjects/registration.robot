*** Settings ***
Documentation         Homepage related keyword
Variables             regis_locators.yaml

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

Verify The login or registration page appears
    [Documentation]             Verify the login or registration page appears
    Click Element               ${title_signin}

#Verify Create Account Subtitle Appears
#    [Documentation]             Verify create account subtitle appears
#    Element Should Contain      ${title_create}             ${title_create}   

Input Email for Registration
    [Documentation]             input email for registration
    Input Text                  ${input_email}                  mysad88623@gmail.com

Click Button Create Account
    [Documentation]             click button create account
    Click Element               ${button_create}
    sleep                       5s

#Verify Page Registration Appears    
#   Click Link                  (//*[contains(@class,"page-subheading")])[1]

Verify Text Your personal information    
    Element Should Be Visible   ${page}

Click Title Mr
    Click Element               ${gender}                 

Input Firstname
    Input Text                  ${firstname}        muhammad

Input Lastname
    Input Text                  ${lastname}         yusuf

Input Password
    Input Text                  ${input_pass}       test1234

#Choose dropdownlist
    #dropdown days
#    Element Should Be Visible   //select[@id="days"]                
#untuk select atau pilih dropdownlist
#    Select From List By Index   //select[@id="days"]                10           
#untuk validasi yang telah dipilih ini karena dia tipenya select
#    List Selection Should Be    //select[@id="days"]                10
    #dropdown month
#    Element Should Be Visible   //select[@id="months"]                
#untuk select atau pilih dropdownlist
#    Select From List By Index   //select[@id="months"]              March                            
#untuk validasi yang telah dipilih ini karena dia tipenya select
#    List Selection Should Be    //select[@id="months"]              March           
    #dropdown years
#    Element Should Be Visible   //select[@id="years"]                
#untuk select atau pilih dropdownlist
#    Select From List By Index   //select[@id="years"]               2002            
#untuk validasi yang telah dipilih ini karena dia tipenya select
#    List Selection Should Be    //select[@id="years"]               2002 
Input Address
    Input Text                      ${address}                  Apaaja Street P.O.Box 12131 Bogor
Input City
    Input Text                      ${city}                     jakarta
    Wait Until Element Is Visible   ${city}                     
Click Picklist State
    #Element Should Be Visible       //select[@id="id_state"]
    Element Should Not Be Visible   ${state}
    Select From List By Index       ${state}                    1 
            
    
    #Select From List By Index       //select[@id="id_state"]            Alabama
    
Input ZIP/POSTALCODE
    Input Text                      ${postcode}                 12311

Click Picklist Country
    Element Should Not Be Visible   ${country}
    Select From List By Index       ${country}                  1
Input Mobile Phone Number
    Input Text                      ${phone}                    12138123
Click Register
    Click Element                   ${submit_acc}

Verify Page Success Registration
    Element Should Be Visible       ${page_success}