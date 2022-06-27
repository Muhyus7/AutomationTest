*** Settings ***
Documentation       Countact Us test cases
Library             SeleniumLibrary
Resource            ../pageObjects/ContactUs.robot

*** Test Cases ***
User Must Be Able to Login to URL
    [Documentation]       Test to verify that the user can ContactUs successfully
    [Setup]               Open Browser Chrome

    Verify Current Url Is Homepage Url
    Verify Homepage Title Appears
    Verify Homepage ContactUs Appears
    Verify Home ContactUs Appears
    Select the dropdown list on the subject heading
    Fill in the registered email address
    Fill in the Order Reference
    Fill in the Message
    Attach File

    [Teardown]            Close Browser
