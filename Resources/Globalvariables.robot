*** Settings ***
Documentation    Suite description
Library             SeleniumLibrary

*** Variables ***
${URL}  http://pegalearn1.instellars.com/prweb/
${Patient}    WCMem001
${pharmacist}     WCPha001
${medical reviewer}    WCMdr001
${Password}     Rules@123
${New}      CPMInteractionPortalHeaderTop_pyDisplayHarness_3
${timeout}  3s
${CaseID}    WC-D-15010