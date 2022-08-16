*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/POM/P_AdCommon.robot
Resource    ../Resources/POM/P_AdNurses.robot
Resource    ../Resources/POM/P_AdHolidays.robot
Resource    ../Resources/POM/P_AdShifts.robot
Resource    ../Resources/POM/P_AdFacilities.robot
Resource    ../Resources/POM/P_AdPayments.robot
Resource    ../Resources/POM/P_AdShift Types.robot

*** Variables ***
#Create New Facility Data
${Name_NewFacility}  Sameh ${Variable_Trial}
${ShortName_NewFacility}  ST${Variable_Trial}
${Image_NewFacility}    ${EXECDIR}/Resources/Test Data/Hospital1.jpg
${Pdf_NewFacility}      ${EXECDIR}/Resources/Test Data/OrintationFacility.pdf
${Email_NewFacility}    Sameh1@Test.com
${Phone_NewFacility}    89756392
${Address_NewFacility}    6 Chicaggo, USA
${LogIn_NewFacility}    Sameh TD1
${Password_NewFacility}    SamehTD1
${Lat_NewFacility}    30.033844615152024
${Lng_NewFacility}    31.212852419413874
${Space}

*** Test Case ***
#Edit Holiday
#  Log_In_NurseDash
#  Click on SideBar Icons    ${Holidays}
#  Click Any Element     //a[@href="#/Holiday/9"]
#  close browser

#Create New Facility TC
#    Log_In_NurseDash
#    Click on SideBar Icons    ${Facilities}
#    wait until page contains element    ${Create_Facility}
#    Create New Facility    ${Name_NewFacility}    ${ShortName_NewFacility}     ${Image_NewFacility}   ${Pdf_NewFacility}    ${Email_NewFacility}    ${Phone_NewFacility}    ${Address_NewFacility}    ${LogIn_NewFacility}    ${Password_NewFacility}    ${Lat_NewFacility}    ${Lng_NewFacility}
#    close browser

#Mark Specific Payment As Paid
#    Log_In_NurseDash
#    Click on SideBar Icons  ${Payments}
#    Click Any Element    ${AddUserPaymentButton}
#    #wait until keyword succeeds    100s    1s   wait until page contains  ${Nurse_AddUserPayment}
#    #wait until keyword succeeds    100s    1s  input text  ${Nurse_AddUserPayment}  Sameh
#    Click Any Element  ${Nurse_AddUserPayment}
#    Click Any Element  //div[@aria-activedescendant="downshift-4-item-1"]
#    close browser

#Select All
#    [Arguments]  ${Page}    ${SelectAll_CheckBox}   {ExpectedNumber}
#    Log_In_NurseDash
#    Click on SideBar Icons  ${Page}
#    Click Any Element   ${SelectAll_CheckBox}

#Edit Specific Shift Type
#    Log_In_NurseDash
#    Click on SideBar Icons  ${ShiftTypes}
#    Click Any Element  //td[.="Shift Type TrialD6"]//following-sibling::td//a[@aria-label="Edit"]
#    input text  //div//input[@value="Shift Type TrialD6"]   Test

#Select All
#    Log_In_NurseDash
#    Click on SideBar Icons  ${ShiftTypes}
#    Click Any Element  //th//span[@class="MuiButtonBase-root MuiIconButton-root jss518 MuiCheckbox-root MuiCheckbox-colorPrimary select-all MuiIconButton-colorPrimary"]


#Edit Specific Payment


#Filter Payments depend on a specific Parameter

#Add a Payment for a User

#Export Report for payments
#        Log_In_NurseDash
#        Click on SideBar Icons      ${Payments}
#        wait until keyword succeeds    1000s    1s    wait until page contains element        //button[@aria-label="Export"]
#        click element        //button[@aria-label="Export"]//span[@class="MuiButton-label"]



