*** Settings ***
    
Resource        ../base/base.robot
Variables        bookpage_locators.yaml

*** Keywords ***
Choose One Way Trip
    Click Element    ${tab_oneway_bookPage}
    Click Element    ${list_from_city}
    Wait Until Element is Visible    ${from_city_chicago}
    Click Element    ${from_city_chicago}
    Click Element    ${list_to_city}
    Wait Until Element is Visible    ${to_city_paris}
    Click Element    ${to_city_paris}
    Click Element    ${list_class}
    Wait Until Element is Visible    ${class_bussiness}
    Click Element    ${class_bussiness}
    Choose Holiday Date 
    Verify End_date Visibility
    Click Element    ${radio_button_flight}
    Click Book

Choose Round Trip
    Click Element    ${tab_roundtrip_bookPage}
    Click Element    ${list_from_city}
    Wait Until Element is Visible    ${from_city_toronto}
    Click Element    ${from_city_toronto}
    Click Element    ${list_to_city}
    Wait Until Element is Visible    ${to_city_paris}
    Click Element    ${to_city_paris}
    Click Element    ${list_class}
    Wait Until Element is Visible    ${class_first}
    Click Element    ${class_first}
    Choose Present Date
    Verify End_date Visibility
    Choose Wrong Date
    Click Element    ${radio_button_flight}
    Click Book

Verify End_date Visibility
    #Element Should Not Contain Text    ${end_date}    ${end_date_label}
    Page Should Not Contain Element    ${end_date_hidden}

Verify Confirmation Page
    Wait Until Element is Visible    ${label_title_price}


Choose Holiday Date
    #01 Janurari 2024
    Click Element    ${start_date}
    Wait Until Element is Visible    ${field_year}
    Click Element    ${field_year}
    Wait Until Element is Visible    ${choose_year}
    Click Element    ${choose_year}
    FOR    ${index}    IN RANGE    1    8
        Wait Until Element is Visible    ${prev_button}
        Click Element    ${prev_button}
    END
    Wait Until Element is Visible    ${choose_newyear_date}
    Click Element    ${choose_newyear_date}
    Click Element    ${ok_button_calender}

Choose Present Date
    #10 Janurari 2024
    Click Element    ${start_date}
    Wait Until Element is Visible    ${field_year}
    Click Element    ${field_year}
    Wait Until Element is Visible    ${choose_year}
    Click Element    ${choose_year}
    FOR    ${index}    IN RANGE    1    8
        Wait Until Element is Visible    ${prev_button}
        Click Element    ${prev_button}
    END
    Wait Until Element is Visible    ${choose_present_date}
    Click Element    ${choose_present_date}
    Click Element    ${ok_button_calender}

Choose Wrong Date
    Click Element    ${end_date}
    Wait Until Element is Visible    ${choose_newyear_date}
    Click Element    ${choose_newyear_date}
    Click Element    ${ok_button_calender}


Click Book
    Click Element    ${book_flight_button}
    
Confirm Price Page
    Choose Price9
    Click Confirm Price  

Choose Price9
    Wait Until Element is Visible   ${confirm_button} 
    Click Element    ${price_9}

Click Confirm Price
    Click Element    ${confirm_button}

Check Booking Success
    Wait Until Element is Visible    ${success_book_page}
    Element Should Contain Text    ${success_book_page}    ${success_book_label}

# Positive Case
Choose One Way Trip Positive
    Click Element                    ${tab_oneway_bookPage}
    Click Element                    ${list_from_city}
    Wait Until Element Is Visible    ${from_city_toronto}
    Click Element                    ${from_city_toronto}
    Click Element                    ${list_to_city}
    Wait Until Element Is Visible    ${to_city_ottawa}
    Click Element                    ${to_city_ottawa}
    Click Element                    ${list_class}
     Wait Until Element is Visible   ${class_first}
    Click Element                    ${class_first}
    Choose Holiday Start Date 7 Agustus 2024
    Choose Holiday End Date 20 Agustus 2024
    Click Element                    ${radioBtn_Ctgflight}
    Click Book

Choose Holiday Start Date 7 Agustus 2024
    Click Element    ${start_date}
    Wait Until Element is Visible    ${kalender}
    Click Element    ${field_year}
    Wait Until Element is Visible    ${year_2024}
    Click Element    ${year_2024}
    Wait Until Element is Visible    ${kalender}
    Click Element    ${7_agustus}
    Click Element    ${ok_button_calender}
Choose Holiday Start Date 25 Agustus 2024
    Click Element    ${start_date}
    Wait Until Element is Visible    ${kalender}
    Click Element    ${field_year}
    Wait Until Element is Visible    ${year_2024}
    Click Element    ${year_2024}
    Wait Until Element is Visible    ${kalender}
    Click Element    ${25_agustus}
    Click Element    ${ok_button_calender}

Choose Holiday End Date 20 Agustus 2024
    Click Element    ${end_date}
    Wait Until Element is Visible    ${kalender}
    Click Element    ${field_year}
    Wait Until Element is Visible    ${year_2024}
    Click Element    ${year_2024}
    Wait Until Element is Visible    ${kalender}
    Click Element    ${20_agustus}
    Click Element    ${ok_button_calender}

Choose Holiday End Date 27 Agustus 2024
    Click Element    ${end_date}
    Wait Until Element is Visible    ${kalender}
    Click Element    ${field_year}
    Wait Until Element is Visible    ${year_2024}
    Click Element    ${year_2024}
    Wait Until Element is Visible    ${kalender}
    Click Element    ${27_agustus}
    Click Element    ${ok_button_calender}

Choose Category Flight
    Click Element    ${radioBtn_Ctgflight}

Choose Price One Way 
    Wait Until Element Is Visible    ${price_page}
    Click Element    ${harga_tiket}
    Click Element    ${btn_cnfrmPrice}

Choose Price Round Trip 
    Wait Until Element Is Visible    ${price_page}
    Click Element    ${harga_tiketRT}
    Click Element    ${btn_cnfrmPrice}
Verify Book Success
    Wait Until Element Is Visible    ${scs_book_text}
    Element Should Contain Text    ${scs_book_text}   ${scs_book_label}

Choose Round Trip Positive
    Click Element                    ${tab_roundtrip_bookPage}
    Click Element                    ${list_from_city}
    Wait Until Element Is Visible    ${from_city_chicago}
    Click Element                    ${from_city_chicago}
    Click Element                    ${list_to_city}
    Wait Until Element Is Visible    ${to_city_london}
    Click Element                    ${to_city_london}
    Click Element                    ${list_class}
    Wait Until Element is Visible    ${class_bussiness}
    Click Element                    ${class_bussiness}
    Choose Holiday Start Date 25 Agustus 2024
    Choose Holiday End Date 27 Agustus 2024
    Click Element                    ${radio_button_flight_hotel}
    Click Book






