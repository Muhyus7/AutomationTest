*** Settings ***
Documentation       Countact Us test cases
Library             SeleniumLibrary
Resource            ../pageObjects/ContactUs.robot

*** Test Cases ***
User Must Be Able to Login to URL
    [Documentation]       Test to verify that the user can Registration successfully
    [Setup]               Open Browser Chrome

    Verify Current Url Is Homepage Url
    Verify Homepage Title Appears
    Verify Homepage ContactUs Appears
    Verify Home ContactUs Appears
    Select the dropdown list on the subject heading
    Fill in the registered email address
    Fill in the Order Reference
    Attach File

    [Teardown]            Close Browser