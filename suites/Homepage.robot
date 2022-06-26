*** Settings ***
Documentation       Homepage test cases
Library             SeleniumLibrary
Resource            ../pageObjects/Homepage.robot

*** Test Cases ***
User Should Be Able To See Homepage
    [Documentation]       Test to verify that user should be able to see homepage
    [Setup]               Open Browser Chrome

    Verify Current Url Is Homepage Url
    Verify Homepage Title Appears
    Verify Homepage Shop-phone Appears
    Verify Homepage ContactUs Appears
    Verify Homepage SignIn Appears
    Verify Homepage YourLogo Appears
    #Verify Homepage Search Appears
    Verify Homepage Cart Appears
    Verify Homepage Menu Appears
    Verify Homepage Containers Menu Appears
    Verify Homepage Menu Popular Appears
    #Verify Menu Button Appears
    Verify Homepage Footer Appears

    [Teardown]            Close Browser