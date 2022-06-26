*** Settings ***
Documentation       My Account test cases
Library             SeleniumLibrary
Resource            ../pageObjects/MyAccount.robot

*** Test Cases ***
User Must Be Able to Login to URL
    [Documentation]       Test to verify that the user can My Account successfully
    [Setup]               Open Browser Chrome

    Verify Current Url Is Homepage Url
    Verify Homepage Title Appears
    Verify The login page appears
    Verify Text Your personal information   
    Input Email for username
    Input Password
    Click Signin
    Verify Page My Account
    Verify Page Order History and Details
    Verify Page My Credit Slips
    Verify Page My Addresses
    Verify Page My Personal information
    Verify Page My Wishlists

    [Teardown]            Close Browser