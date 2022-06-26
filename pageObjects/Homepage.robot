*** Settings ***
Documentation         Homepage related keyword
Variables             homepage_locators.yaml

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

Verify Homepage Shop-phone Appears
    Element Should Be Visible   ${shop_phone}
Verify Homepage ContactUs Appears
    Element Should Be Visible   ${contactus}
Verify Homepage SignIn Appears
    Element Should Be Visible   ${title_signin}
Verify Homepage YourLogo Appears
    Element Should Be Visible   ${title_homepage1}
#Verify Homepage Search Appears
#    Element Should Be Visible  //*[class="btn btn-default button-search"]
Verify Homepage Cart Appears
    Element Should Be Visible   ${cart}
Verify Homepage Menu Appears
    Element Should Be Visible   ${menu}
Verify Homepage Containers Menu Appears
    Element Should Be Visible   ${containers_menu}
Verify Homepage Menu Popular Appears
    Element Should Be Visible   ${popular_menu}

#Verify Menu Button Appears
#    Element Should Be Visible   //*[contains(@class, "toggle")]

Verify Homepage Footer Appears
    Element Should Be Visible   ${footer}