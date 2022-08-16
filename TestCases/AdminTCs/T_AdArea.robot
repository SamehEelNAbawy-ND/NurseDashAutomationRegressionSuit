*** Settings ***
Resource    Resources/POM/P_AdArea.robot

*** Variables ***

${Name_NArea}    Cairo2
${Extali_NArea}    CT1
${Lat_NArea}    30.054832761952568
${Lng_NArea}    31.455402717024562
${Rad_NArea}    20

${NewCreatedArea}    //td//span[.="Cairo Test2"]

# Edit Area Data

${Area_Id}    13
${Specific_Edit_Area}    //td//a[@href="#/Area/${Area_Id}"]
${Name_EditArea}    Cairo Edit

*** Test Cases ***

#Create a new Area
#    Log_In_NurseDash
#    Click on SideBar Icons    ${Areas}
#    Create a New Area    ${Name_NArea}    ${Extali_NArea}    ${Lat_NArea}    ${Lng_NArea}    ${Rad_NArea}
#    close browser
#
#Page should contain the new created Area
#    Log_In_NurseDash
#    Click on SideBar Icons    ${Areas}
#    Verify that Created Area is Exist    ${NewCreatedArea}
#    close browser

Edit on Specific Area
    Log_In_NurseDash
    Click on SideBar Icons    ${Areas}
    Click Any Element    ${Specific_Edit_Area}
    wait until page contains element    ${Name_CreateArea}
    click element    ${Lat_CreateArea}
    input text    ${Lat_CreateArea}    ${EMPTY}
    clear element text    ${Lat_CreateArea}
   # clear element text    //input[@value="Cairo2"]
    sleep    5s