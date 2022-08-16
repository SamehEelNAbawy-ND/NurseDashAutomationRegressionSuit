*** Settings ***
Resource    ../Resources/POM/P_AdCommon.robot
Resource    ../Resources/POM/P_AdHolidays.robot

*** Variables ***
${Holiday_ID}   13
${Holiday_Title}  Holiday TA002

*** Test Cases ***
Create New Holiday
    Log_In_NurseDash
    Click on SideBar Icons    ${Holidays}
    Create Holiday  ${Holiday_Title}
    Close Browser

Delete Existing Holiday
    Log_In_NurseDash
    Click on SideBar Icons      ${Holidays}
    Delete Holiday  ${Holiday_ID}   ${Holiday_Title}
    close browser


