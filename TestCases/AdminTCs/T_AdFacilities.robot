*** Settings ***
Resource    ../../Resources/Admin_POM/P_AdCommon.robot
Resource    ../../Resources/Admin_POM/P_AdFacilities.robot

*** Variables ***
${Name_NewFacility}  Sameh Posting Shifts Automation 06
${ShortName_NewFacility}  SPSA06
${Image_NewFacility}    ${EXECDIR}/Resources/AdminTestData/Hospital1.jpg
${Pdf_NewFacility}      ${EXECDIR}/Resources/AdminTestData/OrintationFacility.pdf
${Email_NewFacility}    SamehAutomation01@Test.com
${Phone_NewFacility}    +18322349914
${Address_NewFacility}    6 Chicaggo, USA
${LogIn_NewFacility}    SamehSS
${Password_NewFacility}    Sameh1234
${Lat_NewFacility}    30.033844615152024
${Lng_NewFacility}    31.212852419413874

*** Test Cases ***
Create New Facility TC
    Log_In_NurseDash
    Click on SideBar Icons    ${Facilities}
    wait until page contains element    ${Create_Facility}
    Create New Facility    ${Name_NewFacility}    ${ShortName_NewFacility}     ${Image_NewFacility}   ${Pdf_NewFacility}    ${Email_NewFacility}    ${Phone_NewFacility}    ${Address_NewFacility}    ${LogIn_NewFacility}    ${Password_NewFacility}    ${Lat_NewFacility}    ${Lng_NewFacility}
    close browser


#Edit Rates Of Facility    ${Facility_Edit}    ${ShiftUnit1_Targeted}    ${ShiftType1_Targeted}


