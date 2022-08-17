*** Settings ***
Library    SeleniumLibrary
Resource    ../../Resources/Admin_POM/P_AdCommon.robot
Resource      ../../Resources/Facility_POM/P_FCommon.robot

*** Variables ***

${F_DropPDF}      //input[@id="orientationMaterials"]
${F_DeleteOrintation}       //button[@title="Delete"]
${F_COVIDVaccineToggle}     //input[@name="covidVaccineRequired"]//parent::span
${F_AllowSingleDoseToggle}      //input[@name="allowSingleDoseVaccine"]//parent::span
${F_MedicalCOVIDToggle}     //input[@name="covidMedicalExemption"]//parent::span
${F_ReligiousCOVIDToggle}       //input[@name="covidMedicalExemption"]//parent::span
${F_UserName}       //input[@id="surveyUsername"]
${F_UserEmail}      //input[@id="surveyUseremail"]
${F_UserRole}       //input[@id="surveyUsertitle"]
${F_CovidStatusList}        //input[@name="covidStatus"]//parent::div
${F_CovidStatusOnSite}       //li[@data-value="on_site"]
${F_CovidStatusFree}      //li[@data-value="free"]
${F_Save}       //button[@type="submit"]

*** Keywords ***
Enter Settings Section KW
    [Arguments]     ${F_PDFFilePath}  ${F_UserNameVariable}  ${F_UserEmailVariable}
    ...     ${F_UserRoleVar}
    Click on SideBar Icons      ${Settings_FSideBar}
    wait until page contains element           ${F_DropPDF}
    sleep       1s
    choose file     ${F_DropPDF}        ${EXECDIR}${F_PDFFilePath}
    click element      ${F_COVIDVaccineToggle}
    input text      ${F_UserName}      ${F_UserNameVariable}
    input text      ${F_UserEmail}     ${F_UserEmailVariable}
    input text      ${F_UserRole}       ${F_UserRoleVar}
    click element       ${F_CovidStatusList}
    wait until page contains element        ${F_CovidStatusFree}
    click element       ${F_CovidStatusFree}
    sleep  1s
    click element       ${F_Save}
    sleep       23s
