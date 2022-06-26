*** Settings ***
Documentation       Order Barang test cases
Library             SeleniumLibrary
Resource            ../pageObjects/Orderbarang.robot

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
    Click To Homepage YourLogo Appears
    Click Select Items To Buy 
    #Verify Page Buy for Click Blouse
    Input Quantity To Buy 
    Input Size To Buy
    Choose Color
    Click Add To Cart

    [Teardown]            Close Browser