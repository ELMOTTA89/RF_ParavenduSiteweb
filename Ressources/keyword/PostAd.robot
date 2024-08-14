*** Settings ***
Library    OperatingSystem
Library    SeleniumLibrary
Library    XML
Variables    ../Locators/Homepage.py
Variables    ../Locators/DeposerAnnoce.py

*** Keywords ***

DeposerAnonce
    Click Element    ${accptercokie}
    Wait Until Element Is Visible    ${DeposerUneAnnoce}
    Click Element    ${DeposerUneAnnoce}
    #Execute JavaScript    document.querySelector("a[title='Déposez vos annonces gratuites']").click()
    Wait Until Element Is Visible  ${ChoixCategorie}  
    Click Element    ${ChoixCategorie}
    Wait Until Element Is Visible    ${selectAutoMoto}
    Click Element   ${selectAutoMoto}
    Wait Until Element Is Visible    ${selectVoitureOccasion}
    Click Element    ${selectVoitureOccasion}  
    Title Should Be    Passez gratuitement votre annonce - ParuVendu.fr 
    Wait Until Element Is Visible    ${selectprofessionel}
    Click Element    ${selectprofessionel}
    Wait Until Element Is Visible    ${selectparticulier}
    Select Radio Button    company_ad    0
    #Click Element    ${selectparticulier}
    #Click Element    ${selectcaracterisuque}
    Select Radio Button    radTypeSaisie    manuelle
    Select From List By Label   ${IDTypevehicul}   Occasion
    Select From List By Label    ${IdMarque}    BMW
    Click Element    ${IDmodel}   
    Wait Until Page Contains    M6
    Select From List By Label    ${IDmodel}    M6
    Click Element    ${Idmois}
    Wait Until Page Contains    Janvier
    Select From List By Label    ${Idmois}    Janvier
    Click Element    ${idannee}
    Wait Until Page Contains    2010
    Select From List By Label    ${idannee}    2010
    Click Element    ${IdCarrosserie}
    Wait Until Page Contains    Cabriolet
    Select From List By label    ${IdCarrosserie}    Cabriolet
    Click Element    ${IdEnergie}
    Wait Until Page Contains    Essence
    Select From List By Label    ${IdEnergie}    Essence
    Click Element    ${idtransmmision}
    Wait Until Page Contains    Semi automatique
    Select From List By Label    ${idtransmmision}    Semi automatique
    Click Element    ${idnbrporte}
    Wait Until Page Contains    2 portes
    Select From List By Label    ${idnbrporte}    2 portes
    Click Element    ${idversion}
    Wait Until Page Contains    M6 Cab SMG7 (43 CV) *
    Select From List By Label    ${idversion}    M6 Cab SMG7 (43 CV) *
    Wait Until Element Is Visible    ${idkilometrage}
    Input Text    ${idkilometrage}    15000
    Clear Element Text    ${idEmissionCO2}
    Input Text    ${idEmissionCO2}    20
    Click Element   ${idcouleurcarrosserie}
    Wait Until Page Contains    Argent
    Select From List By Label    ${idcouleurcarrosserie}    Argent
    Click Element    ${idvignettedair}
    Wait Until Page Contains    3
    Select From List By Label    ${idvignettedair}    3
    Click Element   ${idpremiermain}
    Scroll Element Into View    ${idpremiermain}
    Wait Until Element Is Visible    ${idpremiermain}
    #Select Checkbox    id="enrichi-7800001_60_1"
    Execute JavaScript    document.getElementById('enrichi-7800001_60_1').click()
    Execute JavaScript    document.querySelector('input[name="enrichi-7800001_60[]"]').click()
    


      


  ##################################################################
    #${options}=    Get WebElements    xpath=//select[@id="categorie"]
    #Select From List By Label   id=choixFamille    Pièces et équipements
    ##Wait Until Element Is Visible    ${selectprofessionel}
    #Click Element    ${selectprofessionel}
    #Wait Until Element Is Visible    ${selectparticulier}
    #Click Element    ${selectparticulier}
    #Select From List By Value   id=categorie    VASCA000
    #Wait Until Element Is Visible    ${Selectprixnegociable}
    #Click Element    ${Selectprixnegociable}
    

   # select chekc box     locators
   # inselect checkbox    locators
   # Checkbox Should Be Selected    locator
   # Checkbox Should Not Be Selected    locator
   #Radio Button Should Not Be Selected    locators
   
   # -m robot --listener allure_robotframework --outputdir  C:/Projet/output/allure  C:\Projet\Test\ObjectPage.robot  