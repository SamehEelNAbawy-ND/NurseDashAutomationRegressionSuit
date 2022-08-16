*** Settings ***
Documentation    Demo Sprint00
Resource    ../../Resources/Admin_POM/P_AdCommon.robot
Resource    ../../Resources/Admin_POM/P_AdArea.robot
Resource    ../../Resources/Admin_POM/P_AdFacilities.robot
Resource    ../../Resources/Admin_POM/P_AdShift Units.robot
Resource    ../../Resources/Admin_POM/P_AdShift Types.robot
Resource    ../../Resources/Admin_POM/P_AdNurses.robot
Resource    ../../Resources/Admin_POM/P_AdDocumentTypes.robot

*** Variables ***
#To change Variable each time we run
${Variable_Trial}  Smoke Test 10   #### Change This Number

#Create New Area Variables
${Name_NArea}    Cairo ${Variable_Trial}
${Extali_NArea}    CT 2
${Lat_NArea}    30.054832761952568
${Lng_NArea}    31.455402717024562
${Rad_NArea}    20
${NewCreatedArea}    //td//span[.="Cairo ${Variable_Trial}"]

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

#Create New Shift Unit Data
${ShiftNumber}    20
${Name_NewShiftUnit}    Shift Unit ${Variable_Trial}
${Description_NewShiftUnit}    Shift Unit For ${Variable_Trial}

#Create New Shift Type Data
${Name_NewShiftType}    Shift Type ${Variable_Trial}
${Description_NewShiftType}     Shift type for ${Variable_Trial}
${ShiftType_Checeked}       //td//span[.="Shift Type ${Variable_Trial}"]

#Edit Facility Data
${Facility_Edit}    //a[@href="#/Facility/729"]
${ShiftUnit1_Targeted}    //ul//li[@data-value="18"]
${ShiftType1_Targeted}    //ul//li[@data-value="${Name_NewShiftType}"]

#New Nurse Data
${Pnone_NewNurse}      83223499111
${Name_NewNurse}      Sameh ${Variable_Trial}
${Email_NewNurse}     SamehD1@gmail.com
${Area_NewNurse}      //li[.="Cairo ${Variable_Trial}"]
${PositionType_NewNurse}    //li[.="STNA"]
${Rating_NewNurse}    5
${Adress1_NewNurse}    USA
${Adress2_NewNurse}    //div[@aria-activedescendant="react-autowhatever-1--item-0"]
${AddAddress_NewNurse}    USA 2

${Status_NewNurse}    //ul//li[@data-value="approved"]

#Create New Document Type Data
${Name_NewDocumentType}     DT${Variable_Trial}
${Description_NewDocumentType}      Document Type ${Variable_Trial}

#Create New Nurse Data
${Pnone_NewNurse}      83223499111
${Name_NewNurse}      Sameh ${Variable_Trial}
${Email_NewNurse}     Sameh${Variable_Trial}@gmail.com
${Area_NewNurse}      //li[.="Cairo ${Variable_Trial}"]
${PositionType_NewNurse}    //li[.="STNA"]
${Rating_NewNurse}    5
${Adress1_NewNurse}    USA
${Adress2_NewNurse}    //div[@aria-activedescendant="react-autowhatever-1--item-0"]
${AddAddress_NewNurse}    USA 2

${Status_NewNurse}    //ul//li[@data-value="approved"]

*** Test Cases ***

#First Scenario

Create a new Area
    Log_In_NurseDash
    Click on SideBar Icons    ${Areas}
    Create a New Area    ${Name_NArea}    ${Extali_NArea}    ${Lat_NArea}    ${Lng_NArea}    ${Rad_NArea}

Page should contain the new created Area
    Click on SideBar Icons    ${Areas}
    Verify that Created Area is Exist    ${NewCreatedArea}
    close browser

#Create New Facility TC
#    Log_In_NurseDash
#    Click on SideBar Icons    ${Facilities}
#    wait until page contains element    ${Create_Facility}
#    Create New Facility    ${Name_NewFacility}    ${ShortName_NewFacility}     ${Image_NewFacility}   ${Pdf_NewFacility}    ${Email_NewFacility}    ${Phone_NewFacility}    ${Address_NewFacility}    ${LogIn_NewFacility}    ${Password_NewFacility}    ${Lat_NewFacility}    ${Lng_NewFacility}
#    close browser

Create New Shift Unit TC
    Log_In_NurseDash
    Click on SideBar Icons    ${ShiftUnits}
    Create New Shift Unit    ${Name_NewShiftUnit}   ${Description_NewShiftUnit}

Verify that able to Create New Shift Type
    Click on SideBar Icons    ${ShiftTypes}
    Create New Shift Type   ${Name_NewShiftType}   ${Description_NewShiftType}
    Check that New Shift Type Created       ${ShiftType_Checeked}
    close browser

#Verift ability to Edit in Facility Rate Section
#    Log_In_NurseDash
#    Edit Rates Of Facility    ${Facility_Edit}    ${ShiftUnit1_Targeted}    ${ShiftType1_Targeted}
#    close browser

#Create New Nurse TC
#    Log_In_NurseDash
#    Click on SideBar Icons    ${Nurses}
#    Create New Nurse KW    ${Pnone_NewNurse}   ${Name_NewNurse}    ${Email_NewNurse}    ${Area_NewNurse}    ${PositionType_NewNurse}    ${Rating_NewNurse}   ${Adress1_NewNurse}   ${Adress2_NewNurse}    ${AddAddress_NewNurse}
#    Change Status    ${Status_NewNurse}
#    click button    ${Save_Create_Nurse}

Verify ability to Create New Document
    Log_In_NurseDash
    Click on SideBar Icons    ${DocumentTypes}
    Create Document Type    ${Name_NewDocumentType}     ${Description_NewDocumentType}
    close browser

