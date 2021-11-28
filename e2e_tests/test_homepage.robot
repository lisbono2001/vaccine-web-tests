*** Settings ***
Documentation	A test suit for testing homepage
# After run all test suites close the session
Resource	vaccine-haven.resource
Suite Teardown	Close Browser


*** Test Cases ***
Verify Homepage URL
	Open Browser 	${BASE_URL}  ${BROWSER}
	SET SELENIUM SPEED    0.5 seconds
	${ACTUAL} =  Get Location
	Should Be Equal  ${BASE_URL}  ${ACTUAL}

Verify Registeration Link
	Back to Homepage
	Wait Until Page Contains	Citizen Registration
    Page Should Contain Element	identifier=register__link
    Click Link	identifier=register__link
	${ACTUAL} =  Get Location
	Should Be Equal  ${REGISTER_URL}  ${ACTUAL}

Verify Reservation Link
	Back to Homepage
    Wait Until Page Contains  Vaccine Reservation
    Page Should Contain Element  identifier=reserve__link
    Click Link  identifier=reserve__link
	${ACTUAL} =  Get Location
	Should Be Equal  ${RESERVE_URL}  ${ACTUAL}

Verify Information Link
	Back to Homepage
    Wait Until Page Contains  Your Information
    Page Should Contain Element  identifier=check_info__link
    Click Link  identifier=check_info__link
	${ACTUAL} =  Get Location
	Should Be Equal  ${INFO_URL}  ${ACTUAL}

*** Keywords ***
Back to Homepage
	Go To    ${BASE_URL}