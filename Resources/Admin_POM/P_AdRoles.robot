*** Settings ***
Library    SeleniumLibrary

*** Variables ***

${SelectAll_Roles}    //span[@class="MuiButtonBase-root MuiIconButton-root jss570 MuiCheckbox-root MuiCheckbox-colorPrimary select-all MuiIconButton-colorPrimary"]

# Sorting

${Id_Sorting_Roles}    //th//span[@data-sort="id"]
${Alias_Sorting_Roles}    //th//span[@data-sort="alias"]
${Title_Sorting_Roles}    //th//span[@data-sort="title"]
${CreateAt_Sorting_Roles}    //th//span[@data-sort="createdAt"]
${UpdateAt_Sorting_Roles}    //th//span[@data-sort="updatedAt"]

# After Click on Add Filter
${Id_Sorting_Roles}    //ul//li[@data-key="id"]

# After Click on Create

${Alias_Create_Roles}    //div//input[@id="alias"]
${Title_Create_Roles}    //div//input[@id="title"]
${Add_Create_Roles}    //span//button[@class="MuiButtonBase-root MuiButton-root MuiButton-text button-add button-add-grant MuiButton-textSizeSmall MuiButton-sizeSmall"]
${Save_Create_Roles}    //div//button[@aria-label="Save"]

# After Click on Edit

${_Edit_Roles}

*** Keywords ***

