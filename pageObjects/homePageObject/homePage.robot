*** Settings ***

Resource        ../base/base.robot
Variables        homepage_locators.yaml

*** Keywords ***
Verify Home Page appears
    Wait Until Element is Visible    ${logo_homePage}

Click Sign In Button on Home Page
    Wait Until Element is Visible        ${signIn_button_homePage}
    Click Element                        ${signIn_button_homePage}

Verify User Is Logged In
    Wait Until Element is Visible    ${userName_text_homePage}

Click Search Button On Home Page
    Wait Until Element is Visible        ${search_button_homePage}
    Click Element                        ${search_button_homePage}

Book Flight Page
    Wait Until Element is Visible    ${book_button_bookPage}
    Click Element                    ${book_button_bookPage}
    Wait Until Element is Visible    ${tab_oneway_bookPage}
    Wait Until Element is Visible    ${tab_roundtrip_bookPage}