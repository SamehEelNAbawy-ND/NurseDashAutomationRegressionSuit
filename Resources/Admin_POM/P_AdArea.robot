*** Settings ***
Library    SeleniumLibrary
Resource    P_AdCommon.robot

*** Variables ***

# Sorting Area's Data in the Table
${SelectAll_Area}    //table//thead//tr//th//span[@class="MuiButtonBase-root MuiIconButton-root jss293 MuiCheckbox-root MuiCheckbox-colorPrimary select-all MuiIconButton-colorPrimary"]
${Id_Area}    //span[@data-sort="id"]
${Name_Area}    //span[@data-sort="name"]
${CreatedAt_Area}    //a[@href="#/Area/create"]

${Id_Filter}    //li[@data-key="id"]
${DeleteButton_Area}

# After Clicking on create to create a new Area
${Name_CreateArea}    //div//input[@id="name"]
${ExternalAllina_CreateArea}    //div//input[@id="externalAlias"]
${Lat_CreateArea}    //input[@id="lat"]
${Lng_CreateArea}    //input[@id="lng"]
${Radius_CreateArea}    //input[@id="radius"]
${AddSupportedPosition_CreateArea}    //span//span[.="Add"]

# Changable >> The relation between each add new supported position fields must be related to no. 1 or 2 or ....*** Variables ***

${Save_CreateArea}    //button[@aria-label="Save"]

*** Keywords ***

#Add Support Details
#Select Type
#External Alians

#Remove Added Supported Details
#Go in edit area

Create a New Area
    [Arguments]    ${Name_NArea}    ${Extali_NArea}    ${Lat_NArea}    ${Lng_NArea}    ${Rad_NArea}
    Click Any Element  ${CreatedAt_Area}
    wait until element is visible    ${Name_CreateArea}
    input text    ${Name_CreateArea}    ${Name_NArea}
    input text    ${ExternalAllina_CreateArea}    ${Extali_NArea}
    input text    ${Lat_CreateArea}    ${Lat_NArea}
    input text    ${Lng_CreateArea}    ${Lng_NArea}
    input text    ${Radius_CreateArea}    ${Rad_NArea}
    Click on Specific Button    ${Save_CreateArea}

Verify that Created Area is Exist
    [Arguments]    ${NewCreatedArea}
    wait until keyword succeeds    1000s    1s  wait until page contains element      ${NewCreatedArea}
    page should contain element    ${NewCreatedArea}

Edit Specific Area
    [Arguments]  ${Specific_Edit_Area}
    Click Any Element    ${Specific_Edit_Area}
    wait until page contains element    ${Name_CreateArea}
   # clear element text    ${Name_NArea}

#Delete Specific Area
#    [Arguments]    ${Specific_Delete_Area}
#    Click Any Element    ${DeleteButton_Area}
#    wait until element does not contain    ${Specific_Delete_Area}


