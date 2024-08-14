*** Settings ***    
Library    OperatingSystem
Library    SeleniumLibrary

Resource    ../Ressources/keyword/common.robot
Resource    ../Ressources/keyword/PostAd.robot
Resource    ../Ressources/keyword/Login.robot

*** Test Cases ***

TC0:Open page
    [Documentation]    open Url https://www.paruvendu.fr/
    [Tags]    critical1
    OpenPage
    Close Browser

TC0: DeposerAnonce
    [Documentation]    deposer une annoce gratuite
    [Tags]    critical2
    OpenPage
    DeposerAnonce
    Close Browser

TC1:inscription
    [Documentation]    Login
    [Tags]    critical3
    OpenPage
    loginOK
    Close Browser