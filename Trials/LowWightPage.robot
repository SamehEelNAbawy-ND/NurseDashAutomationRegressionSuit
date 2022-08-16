*** Settings ***
Resource    ../Resources/POM/P_AdCommon.robot
Resource    ../Resources/POM/P_AdArea.robot

*** Variables ***
${Name_NArea}    Cairo Test
${Extali_NArea}    CT1
${Lat_NArea}    30.054832761952568
${Lng_NArea}    31.455402717024562
${Rad_NArea}    20

*** Test Cases ***
Test Case One
    Log_In_NurseDash
#    Click on SideBar Icons    ${Areas}
#    sleep    10s
#    Create a New Area
