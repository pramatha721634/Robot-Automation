*** Settings ***
Documentation    Suite description
Library             SeleniumLibrary


*** Keywords ***
Open Drug parchase Application in Chrome and Maximize
    Open Browser  url=${URL}  browser=chrome
    ${old_wait}=   set selenium implicit wait  60 seconds
    set selenium implicit wait   ${old_wait}
    Maximize Browser Window
    Log to console  Browser is Maximized

Verify SignOn Page title
    ${WindowTitle}=    Get Title
    Should Be Equal  ${WindowTitle}  Interaction Portal
    Log to console  Navigated to :${WindowTitle}

Capture caseID
    ${CaseID}   get text   //*[@id="RULE_KEY"]/div/div/div/div[1]/div/div/div/div[2]/span
    ${CaseID}   Remove String   ${CaseID}   (    )
    set global variable   ${CaseID}
    sleep  ${timeout}

Click on New CaseID
    wait until element is visible   PegaGadget0Ifr    timeout=30
    select frame    PegaGadget0Ifr
    Wait Until Element Is Enabled    pyUserWorkList_pgRepPgSubSectionpyUserWorkListBBB.pxResults(1)_273        timeout=30
    click link   ${CaseID}
    unselect frame