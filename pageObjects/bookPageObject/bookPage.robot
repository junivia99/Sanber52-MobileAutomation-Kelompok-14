*** Settings ***
    
Resource        ../base/base.robot
Variables        bookpage_locators.yaml

*** Keywords ***

Choose One Way Trip
    Click Element    ${tab_oneway_bookPage}
    Click Element    ${list_from_city}
    Wait Until Element is Visible    ${from_city_new_york}
    Click Element    ${list_to_city}
    Wait Until Element is Visible    ${to_city_paris}
    Click Element    ${from_city_new_york}
    Verify End_date Visibility

Verify End_date Visibility
    #Element Should Not Contain Text    ${end_date}    ${end_date_label}
    Page Should Not Contain Element    ${end_date_hidden}

Verify Confirmation Page
    Wait Until Element is Visible    ${label_title_price}
    
Test
    Click Element    ${tab_oneway_bookPage}
    Click Element    ${list_from_city}
    Wait Until Element is Visible    ${from_city_new_york}
    Click Element    ${from_city_new_york}
    Wait Until Element is Visible    ${from_city_new_york}
    Click Element    ${from_city_new_york}
    Click Element    ${start_date}
    Wait Until Element is Visible    ${field_year}
    Click Element    ${field_year}
    Wait Until Element is Visible    ${choose_year}
    Click Element    ${choose_year}
    FOR    ${index}    IN RANGE    1    5
        Wait Until Element is Visible    ${next_button}
        Click Element    ${next_button}
    END
    Wait Until Element is Visible    ${choose_start_date}
    Click Element    ${choose_start_date}
    Click Element    ${ok_button_calender}
    Click Element    ${book_flight_button}