*** Settings ***
Library    OperatingSystem
Library    SeleniumLibrary

*** Variables ***

${url}    https://www.paruvendu.fr/
${browser}    chrome

*** Keywords ***

OpenPage
    Open Browser    ${url}    ${browser}
    Maximize Browser Window 