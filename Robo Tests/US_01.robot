*** Settings ***
Documentation       Testing Drug parchase Application
Library             SeleniumLibrary
Library             BuiltIn
Library             String
Library             Collections
Library             OperatingSystem
Library             Dialogs
Resource            ../Resources/ComonFuntionality.robot
Resource            ../Resources/Keyword.robot
Resource            ../Resources/Globalvariables.robot



#robot -d Results -i test001 US_01.robot


*** Test Cases ***
TestCase001: Collect all required member details
    [Documentation]  This is to verify member able to update details.
    [Tags]  test001     sanity001       sanity002       sanity003
    [Setup]
        Open Drug parchase Application in Chrome and Maximize
        Login with   ${Patient}     ${Password}
        Click on New link
        Update member details
        Add drug details
        Add doctor prescription
        Capture questions details
        Capture caseID
    [Teardown]  Close Browser

TestCase002: Approval flow by pharmacist
    [Documentation]  This is to verify pharmacist able to Approve requests.
    [Tags]  test002     sanity001
    [Setup]
        Open Drug parchase Application in Chrome and Maximize
        Login with   ${pharmacist}     ${Password}
        Click on New CaseID
        Approve request
#    [Teardown]  Close Browser

TestCase003: Rejection flow by pharmacist
    [Documentation]  This is to verify pharmacist able to Reject requests.
    [Tags]  test003     sanity002       sanity003
    [Setup]
        Open Drug parchase Application in Chrome and Maximize
        Login with   ${pharmacist}     ${Password}
        Click on New CaseID
        Reject request
    [Teardown]  Close Browser

TestCase004: Approval flow by MD Reviewer
    [Documentation]  This is to verify MD Reviewer able to Approve requests.
    [Tags]  test004     sanity002
    [Setup]
        Open Drug parchase Application in Chrome and Maximize
        Login with   ${medical reviewer}     ${Password}
        Click on New CaseID
        Approve request
    [Teardown]  Close Browser

TestCase005: Rejection flow by MD Reviewer
    [Documentation]  This is to verify MD Reviewer able to Reject requests.
    [Tags]  test005     sanity003
    [Setup]
        Open Drug parchase Application in Chrome and Maximize
        Login with   ${medical reviewer}     ${Password}
        Click on New CaseID
        Reject request
    [Teardown]  Close Browser



