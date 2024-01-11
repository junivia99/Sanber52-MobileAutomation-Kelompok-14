*** Settings ***

Resource        ../pageObjects/homePageObject/homePage.robot
Resource        ../pageObjects/loginPageObject/loginPage.robot
Resource        ../pageObjects/base/base.robot
Resource        ../pageObjects/bookPageObject/bookPage.robot

Test Setup                 Run Keywords
...                        Open Flight Application    
...                        Login with valid credentials
Test Teardown              Close Flight Application

*** Test Cases ***
#Positive case Mursyid Salim
User Booking One Way Positive Case    
    #Step 1 : Pergi ke page Book
    Book Flight Page
    #Step 2 : Choose wrong date (before 10 Januari 2024)
    Choose One Way Trip Positive