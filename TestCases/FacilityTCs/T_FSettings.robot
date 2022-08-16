*** Settings ***
Library     SeleniumLibrary
Resource      ../Resources/Facility_POM/P_FCommon.robot
Resource    ../Resources/Admin_POM/P_AdCommon.robot

*** Variables ***
${F_UserNameVariable}      Sameh TA01
${F_PasswordVariable}      Sameh1234

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
*** Test Cases ***
Enter Settings Section
    LogIn Facility Portal       ${F_UserNameVariable}     ${F_PasswordVariable}
    Click on SideBar Icons      ${Settings_FSideBar}
    wait until page contains element           ${F_DropPDF}
    sleep       1s
    choose file     ${F_DropPDF}        ${EXECDIR}/Resources/AdminTestData/OrintationFacility.pdf
    click element      ${F_COVIDVaccineToggle}
    input text      ${F_UserName}      Sameh
    input text      ${F_UserEmail}     sameh@nursedash.com
    input text      ${F_UserRole}       Facility User
    click element       ${F_CovidStatusList}
    wait until page contains element        ${F_CovidStatusFree}
    click element       ${F_CovidStatusFree}
    click element       ${F_Save}
