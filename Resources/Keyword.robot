*** Settings ***
Documentation    Suite description
Library             SeleniumLibrary


*** Keywords ***
Login with
    [Arguments]      ${UserName}     ${Password}
    input text  txtUserID        ${UserName}
    input text  txtPassword      ${Password}
    click button  sub
    Log to console  Clicked on Signon link successfully.

Click on New link
    sleep  ${timeout}
    sleep  ${timeout}
    click link  ${New}
    wait until element is visible    //span[contains(text(),"Drug Purchase Request")]       timeout=20
    click element                   //span[contains(text(),"Drug Purchase Request")]

Update member details
    sleep  ${timeout}
    select frame                    id:PegaGadget1Ifr
    set focus to element            $PpyWorkPage$pFirstName
    ${y}        Generate Random String    5    [LOWER]
    ${random}   Generate Random String  6   [NUMBERS]
    wait until element is visible    $PpyWorkPage$pFirstName    timeout=20
    input text       $PpyWorkPage$pFirstName    test${y}
    input text       $PpyWorkPage$pMemberName    testing${y}
    input text       $PpyWorkPage$pBirthDate    11/18/1997
    input text       $PpyWorkPage$pDrugPurchaseDetails$pEmailID    ${y}@gmail.com
    input text       $PpyWorkPage$pMemberPhone    9933${random}
    wait until element is visible    $PpyWorkPage$pGenderCode           timeout=20
    Select From List By Label        $PpyWorkPage$pGenderCode   Female
    input text       $PpyWorkPage$pPincode    ${random}
    Select From List By Value       $PpyWorkPage$pMaritalStatusCode    M
    click element                     pyCaseActionAreaButtons_pyWorkPage_16
    sleep  ${timeout}

Add drug details
    sleep  ${timeout}
    set focus to element            pzPegaDefaultGridIcons_pyWorkPage_4
    wait until element is visible   pzPegaDefaultGridIcons_pyWorkPage_4    timeout=20
    click element                   pzPegaDefaultGridIcons_pyWorkPage_4
    sleep  ${timeout}
    input text                      $PpyWorkPage$pDrugPurchaseList$l1$pDrugName    pamidronate
    sleep  ${timeout}
    press keys  ${None}    ARROW_DOWN
    sleep  ${timeout}
    press keys  ${None}    ENTER
    sleep  ${timeout}
    ${random quantity}   Generate Random String  2   [NUMBERS]
    input text                      $PpyWorkPage$pDrugPurchaseList$l1$pRequiredQuantity    ${random quantity}
    sleep  ${timeout}
    sleep  ${timeout}
    set focus to element            $PpyWorkPage$pDrugPurchaseDetails$pReasonForDrugPurchase
    wait until element is visible   $PpyWorkPage$pDrugPurchaseDetails$pReasonForDrugPurchase    timeout=20
    input text       $PpyWorkPage$pDrugPurchaseDetails$pReasonForDrugPurchase    test
    sleep  ${timeout}

Add doctor prescription
    sleep  ${timeout}
    click element                   //*[@id="RULE_KEY"]/div[3]/div/div[2]/button/div/div/div/div
    sleep  ${timeout}
    sleep  ${timeout}
    choose file     $PpyAttachmentPage$ppxAttachName   C:\\Crm.JPG
    sleep  ${timeout}
    sleep  ${timeout}
    sleep  ${timeout}
    CLICK BUTTON    //*[@id="ModalButtonSubmit"]
    sleep  ${timeout}
    set focus to element            $PpyWorkPage$pDrugPurchaseDetails$pReasonForDrugPurchase
    input text       $PpyWorkPage$pDrugPurchaseDetails$pReasonForDrugPurchase    test
    sleep  ${timeout}
    click element                     pyCaseActionAreaButtons_pyWorkPage_16
    sleep  ${timeout}

Capture questions details
    set focus to element            $PpyWorkPage$pDrugPurchaseDetails$pQ1
    wait until element is visible   $PpyWorkPage$pDrugPurchaseDetails$pQ1    timeout=20
    input text       $PpyWorkPage$pDrugPurchaseDetails$pQ1    questions details001
    input text       $PpyWorkPage$pDrugPurchaseDetails$pQ2    questions details002
    input text       $PpyWorkPage$pDrugPurchaseDetails$pQ3    questions details002
    input text       $PpyWorkPage$pDrugPurchaseDetails$pQ4    questions details003
    sleep  ${timeout}
    click element                     pyCaseActionAreaButtons_pyWorkPage_16
    sleep  ${timeout}

Approve request
    wait until element is visible   PegaGadget1Ifr    timeout=30
    select frame    PegaGadget1Ifr
    wait until element is visible    //*[@id="RULE_KEY"]/div/div/div/div[1]/div/div/div[1]/span/label       timeout=20
    set focus to element            //*[@id="RULE_KEY"]/div/div/div/div[1]/div/div/div[1]/span/label
    click element       //*[@id="RULE_KEY"]/div/div/div/div[1]/div/div/div[1]/span/label
    sleep  ${timeout}
    input text          $PpyWorkPage$ppyNote    testing
    click element       pyCaseActionAreaButtons_pyWorkPage_16
    sleep  ${timeout}

Reject request
    wait until element is visible   PegaGadget1Ifr    timeout=30
    select frame    PegaGadget1Ifr
    set focus to element            //*[@id="RULE_KEY"]/div/div/div/div[1]/div/div/div[2]/span/label
    click element       //*[@id="RULE_KEY"]/div/div/div/div[1]/div/div/div[2]/span/label
    sleep  ${timeout}
    input text          $PpyWorkPage$ppyNote    testing
    click element       pyCaseActionAreaButtons_pyWorkPage_16
    sleep  ${timeout}