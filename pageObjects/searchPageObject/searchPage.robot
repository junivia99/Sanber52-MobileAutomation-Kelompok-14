*** Settings ***
    
Resource        ../base/base.robot
Variables        searchpage_locators.yaml
 

*** Keywords ***

Verify Search Page Appears
    Wait Until Element is Visible    ${label_enter_flightNumber_searchPage}
    Wait Until Element is Visible    ${flightNumber_input_searchPage}
    Wait Until Element is Visible    ${search_button_searchPage}
Input Flight Number
    [Arguments]        ${flight_number}
    Input Text        ${flightNumber_input_searchPage}    ${flight_number}

Click Search In Button On Search Page 
    Click Element    ${search_button_searchPage}

Verify Flight Number Page
    Wait Until Element is Visible    ${label_result_destination_searchPage}
    Wait Until Element is Visible    ${label_result_flightnumber_searchPage}
    Wait Until Element is Visible    ${label_terminal_searchPage}
    Wait Until Element is Visible    ${label_result_terminal_searchPage}
    Wait Until Element is Visible    ${label_result_schedule_searchPage}
    Wait Until Element is Visible    ${label_departed_searchPage}
    Wait Until Element is Visible    ${label_result_departed_searchPage}

