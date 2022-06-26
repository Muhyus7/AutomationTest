*** Settings ***
Documentation       Login test cases
Library             SeleniumLibrary
Resource            ../pageObjects/login.robot

*** Test Cases ***
User Must Be Able to Login to URL
    [Documentation]       Test to verify that the user can Registration successfully
    [Setup]               Open Browser Chrome

    Verify Current Url Is Homepage Url
    Verify Homepage Title Appears
    Verify The login page appears
    Verify Text Your personal information   
    Input Email for username
    Input Password
    Click Signin
    Verify Page Success Login

    [Teardown]            Close Browser