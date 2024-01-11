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
    #Step 2 : Pilih Tujuan Dan tanggal 
    Choose One Way Trip Positive
    # Pilih harga
    Choose Price One Way
    # Konfirmasi Book Berhasil
    Verify Book Success

User Booking Round Trip Positive Case    
    #Step 1 : Pergi ke page Book
    Book Flight Page
    #Step 2 : Pilih Tujuan Dan tanggal 
    Choose Round Trip Positive
    # Pilih harga roundtrip
    Choose Price Round Trip
    # Konfirmasi Book Berhasil
    Verify Book Success

    