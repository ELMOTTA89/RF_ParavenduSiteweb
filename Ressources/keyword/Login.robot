*** Settings ***
Library    OperatingSystem
Library    SeleniumLibrary
Variables    ../Locators/Login.py
Variables    ../Locators/Homepage.py

*** Keywords ***
loginOK
    Click Element    ${accptercokie}
    Click Element    ${incription}
    Wait Until Element Is Visible    ${idadressemail}
    Click Element    ${idadressemail}
    Input Text    ${idadressemail}    LEMEC123@gmail.com
    Click Element    ${idbouttoncontinuer}
    Input Text    ${idprenon}    aaaa
    Input Text    ${idnom}    nnnn
    Input Text    ${idpostale}    38400
    Click Element    ${idboutsubmit}
    #Execute JavaScript    document.evaluate("//*[text()='Me déconnecter']", document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue.click()