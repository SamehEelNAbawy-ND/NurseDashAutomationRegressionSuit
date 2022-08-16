*** Settings ***
Resource    ../Resources/POM/P_AdCommon.robot
Resource    ../Resources/POM/P_AdNurses.robot

*** Variables ***
${Pnone_NewNurse}      83223499111
${Name_NewNurse}      Sameh D1
${Email_NewNurse}     SamehD1@gmail.com
${Area_NewNurse}      //li[.="Cairo TestD1"]
${PositionType_NewNurse}    //li[@data-value="STNA"]
${Rating_NewNurse}    5
${Adress1_NewNurse}    USA
${Adress2_NewNurse}    //div[@aria-activedescendant="react-autowhatever-1--item-0"]
${AddAddress_NewNurse}    USA 2

${Status_NewNurse}    //ul//li[@data-value="approved"]

*** Test Cases ***

Create New Nurse TC
    Log_In_NurseDash
    Click on SideBar Icons    ${Nurses}
    Create New Nurse KW    ${Pnone_NewNurse}   ${Name_NewNurse}    ${Email_NewNurse}    ${Area_NewNurse}    ${PositionType_NewNurse}    ${Rating_NewNurse}   ${Adress1_NewNurse}   ${Adress2_NewNurse}    ${AddAddress_NewNurse}
    Change Status    ${Status_NewNurse}
    click button    ${Save_Create_Nurse}
    wait until page contains
    close browser

Delete Existing Nurse
    Log_In_NurseDash
    Click on SideBar Icons    ${Nurses}
