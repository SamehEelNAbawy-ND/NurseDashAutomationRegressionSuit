*** Settings ***
Resource    ../Resources/POM/P_AdCommon.robot
Resource    ../Resources/POM/P_AdShift Units.robot

*** Variables ***
${ShiftNumber}    20
${Name_NewShiftUnit}    Shift Unit Test 13
${Description_NewShiftUnit}    Shift Unit For Test
${NewShiftUnitCreated}  //td//span[.="${Name_NewShiftUnit}"]

*** Test Cases ***
#Create New Shift Unit TC
#    Log_In_NurseDash
#    Click on SideBar Icons    ${ShiftUnits}
#    wait until page contains element    ${Create_ShiftUnit}
#    Create New Shift Unit    ${Name_NewShiftUnit}   ${Description_NewShiftUnit}
#    close browser

#Check that New Shift unit u created is exist
#    Log_In_NurseDash
#    Click on SideBar Icons      ${ShiftUnits}
#    Check that New Element u created Exist   ${NewShiftUnitCreated}
#    close browser

Delete Shift Type
    [Arguments]  ${ShiftTypeName}
    Click on SideBar Icons  ${ShiftTypes}
    Click Any Element  //td[.="${Name_NewShiftUnit}"]//preceding-sibling::td//span//span//input[@type="checkbox"]
    Click Any Element  //td[.="${Name_NewShiftUnit}"]//following-sibling::td//button//span//span[.="Delete"]
    wait until page does not contain element  //td[.="${Name_NewShiftUnit}"]


