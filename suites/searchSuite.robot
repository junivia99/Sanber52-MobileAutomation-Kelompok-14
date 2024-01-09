
*** Settings ***

Resource        ../pageObjects/homePageObject/homePage.robot
Resource        ../pageObjects/loginPageObject/loginPage.robot
Resource        ../pageObjects/searchPageObject/searchPage.robot
Resource        ../pageObjects/base/base.robot

Test Setup                 Run Keywords
...                        Open Flight Application    
...                        Login with valid credentials
Test Teardown              Close Flight Application

*** Variables ***

${VALID_EMAIL}           support@ngendigital.com
${VALID_PASSWORD}        abc123 
${VALID_FLIGHT_NUMBER}    DA935
${INVALID_FLIGHT_NUMBER}   XXXXX



*** Test Cases ***
User should be able to search with valid credentials

    # Step 1 : open application
    Open Flight Application
    # Step 2 : Verify home page appears
    Verify Home Page appears
    # Step 3 : Click sign in button on home page
    Click Sign In Button on Home Page
    # Step 4 : Verify login page appears
    Verify Login Appears
    # Step 5 : Input username 
    Input User Email On Login Page    ${VALID_EMAIL}
    # Step 6 : Input password
    Input User Password On Login Page    ${VALID_PASSWORD}        
    # Step 7 : Click sign in button on login page
    Click Sign In Button On Login Page 
    # Step 8 : Verify user is logged in
    Verify User Is Logged In 
    # Step 9 : Click button search
    Click Search Button On Home Page
    # Step 10 : Verify search page appears
    Verify Search Page Appears
    # Step 11 : Input valid flight number 
    Input Flight Number        ${VALID_FLIGHT_NUMBER} 
    # Step 12 : Click Search button on search page
    Click Search In Button On Search Page 
    # Step 13 : Verify flight number page
    Verify Flight Number Page

User should not be able to search with invalid credentials
    #step 1 : click search button on home page
    Click Search Button On Home Page

    #step 2 : verify search page appears
    Verify Search Page Appears

    #step 4 : input invalid flight number
    Input Flight Number                ${INVALID_FLIGHT_NUMBER}

    #step 5 : click search button
    Click Search In Button On Search Page

    #step  : verify result of invalid flight number search --> contain text 'Please enter valid Flight Number'
    Verify Error Message Invalid Flight Number