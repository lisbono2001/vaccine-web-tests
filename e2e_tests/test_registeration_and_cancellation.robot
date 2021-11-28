*** Settings ***
Documentation	A test suit for testing registeration page
Resource	vaccine-haven.resource
Suite Teardown	Close Browser

*** Test Cases ***
Verify Registeration URL
	Open Registration page
	SET SELENIUM SPEED    0.3 seconds
	${ACTUAL} =  Get Location
	Should Be Equal  ${REGISTER_URL}  ${ACTUAL}

Verify Inputting Data For Registration
	Input Citizen ID
	Input First name
	Input Last name
	Input Birth date
	Input Occupation
	Input Phone Number
	Input Address

Verify Registeration Submission
	Submit Registration
	${ACTUAL} =  Get Location
	Should Be Equal  ${BASE_URL}  ${ACTUAL}

Verify Inputting Duplicate Data For Registration
	Go To    ${REGISTER_URL}
	Input Citizen ID
	Input First name
	Input Last name
	Input Birth date
	Input Occupation
	Input Phone Number
	Input Address

Verify Submission Inputted Duplicated Data
	Submit Registration
	Wait Until Page Contains  This Citizen ID already registered.
	${ACTUAL} =  Get Location
	Should Be Equal  ${REGISTER_URL}  ${ACTUAL}

Verify Registered Citizen
	Go To    ${INFO_URL}
	Input Citizen ID
	Submit Check Information

Verify Registered Citizen Information
	Wait Until Page Contains    User information:           
	Page Should Contain		${CITIZEN_ID}
	Page Should Contain		${FIRST_NAME}
	Page Should Contain		${LAST_NAME}
	Page Should Contain		${BIRTH_DATE}
	Page Should Contain		${OCCUPATION}
	Page Should Contain		${PHONE_NUMBER}
	Page Should Contain		${ADDRESS}

Verify Reservation
	Go To    ${RESERVE_URL}
    Input Citizen ID
    Select From List By Value	identifier=site_name	${SITE_NAME}
    Select From List By Value	identifier=vaccine_name	${VACCINE_NAME}
    Click Button	Submit
	${ACTUAL} =  Get Location
	Should Be Equal  ${BASE_URL}  ${ACTUAL}

Verify Reserved Vaccine
	Go To    ${INFO_URL}
	Input Citizen ID
	Submit Check Information
	Wait Until Page Contains    User information:           
	Page Should Contain		${SITE_NAME}
	Page Should Contain		${VACCINE_NAME}

Verify Cancellation
	Click Button  identifier=cancel__btn
	${ACTUAL} =  Get Location
	Should Be Equal  ${BASE_URL}  ${ACTUAL}

Verify Cancelled Vaccine
	Go To    ${INFO_URL}
	Input Citizen ID
	Submit Check Information
	Wait Until Page Contains    User information:           
	Page Should Not Contain		${SITE_NAME}
	Page Should Not Contain		${VACCINE_NAME}

*** Keywords ***
Open Registration page
    Open Browser  ${REGISTER_URL}  ${BROWSER}

Input Citizen ID
	Input Text	 citizen_id  ${CITIZEN_ID}

Input First name
	Input Text	 name  ${FIRST_NAME}

Input Last name
	Input Text	 surname  ${LAST_NAME}

Input Birth date
	Input Text	 birth_date  ${BIRTH_DATE}

Input Occupation
	Input Text	 occupation  ${OCCUPATION}

Input Phone Number
	Input Text	 phone_number  ${PHONE_NUMBER}

Input Address
	Input Text	 address  ${ADDRESS}

Submit Registration
    Click Button    register__btn

Submit Check Information
    Click Button    info__btn