*** Settings ***
Library  SeleniumLibrary

*** Variables ***
# variable names can contain spaces
${BASE_URL}    https://vaccine-haven.herokuapp.com/
${REGISTER_URL}    https://vaccine-haven.herokuapp.com/registration
${RESERVE_URL}    https://vaccine-haven.herokuapp.com/reservation
${INFO_URL}    https://vaccine-haven.herokuapp.com/info
${BROWSER}      gc
${CITIZEN_ID}      9621054548313
${FIRST_NAME}      Theetouch 
${LAST_NAME}       Kasemarnontana
${BIRTH_DATE}      27072001
${OCCUPATION}      Student
${PHONE_NUMBER}    0945296162
${ADDRESS}         1537/881 Elio Del Mos Chatuchak
${SITE_NAME}       OGYHSite
${VACCINE_NAME}    Sinovac

*** Keywords ***
Back to Homepage
	Go To    ${BASE_URL}