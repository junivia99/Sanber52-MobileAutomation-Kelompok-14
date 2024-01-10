*** Settings ***

Resource        ../pageObjects/homePageObject/homePage.robot
Resource        ../pageObjects/loginPageObject/loginPage.robot
Resource        ../pageObjects/base/base.robot
Resource        ../pageObjects/bookPageObject/bookPage.robot

Test Setup                 Run Keywords
...                        Open Flight Application    
...                        Login with valid credentials
Test Teardown              Close Flight Application

*** Variables ***

${VALID_EMAIL}           support@ngendigital.com
${VALID_PASSWORD}        abc123 

*** Test Cases ***
#Negative Case
User book one way trip for wrong date before present
    #Terdapat bug ketika memilih one way trip
    #Field end_date seharusnya tidak ditampilkan
    #Case akan PASS karena nama field end_date diubah
    
    #Step 1 : Go to book page
    Book Flight Page
    #Step 2 : Choose wrong date (before 10 Januari 2024)
    Choose One Way Trip 
    #Step 3 : Choose Price (Page bug)
    Confirm Price Page
    #Step 4 : Booking page success validation
    Check Booking Success

User book round trip for valid depart date and wrong return date
    # Step 1 : Go to book page
    Book Flight Page
    #Step 2 : Choose wrong date ( 10 Januari 2024)
    Choose Round Trip
    #Step 3 : Choose Price (Page bug)
    Confirm Price Page
    #Step 4 : Booking page success validation
    Check Booking Success