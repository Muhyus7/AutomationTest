*** Settings ***
Documentation       Registration test cases
Library             SeleniumLibrary
Resource            ../pageObjects/registration.robot

*** Test Cases ***
User Must Be Able to Login to URL
    [Documentation]       Test to verify that the user can Registration successfully
    [Setup]               Open Browser Chrome

    Verify Current Url Is Homepage Url
    Verify Homepage Title Appears
    Verify The login or registration page appears
    #Verify Create Account Subtitle Appears
    Input Email for Registration
    Click Button Create Account
    #Verify Page Registration Appears
    Verify Text Your personal information   
    Click Title Mr
    Input Firstname
    Input Lastname
    Input Password
    #Choose dropdownlist
    Input Address
    Input City
    Click Picklist State
    Input ZIP/POSTALCODE
    Click Picklist Country
    Input Mobile Phone Number
    Click Register
    Verify Page Success Registration
    
    [Teardown]            Close Browser