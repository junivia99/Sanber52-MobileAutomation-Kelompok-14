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
User book one way trip end_date field must be hidden
    #Terdapat bug ketika memilih one way trip
    #Field end_date seharusnya tidak ditampilkan
    #Case akan PASS karena nama field end_date diubah
    
    # Step 1 : Go to book page
    Book Flight Page
    #Step 2 : Choose from city

    #Verify End_date Visibility
    #Choose One Way Trip 
    #Step12
    #Verify Confirmation Page 