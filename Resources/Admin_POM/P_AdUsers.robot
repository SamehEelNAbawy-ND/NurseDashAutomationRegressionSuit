*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${SelectAll_Users}    //th//span[@class="MuiButtonBase-root MuiIconButton-root jss570 MuiCheckbox-root MuiCheckbox-colorPrimary select-all MuiIconButton-colorPrimary"]

# Sorting Elements in the Table

${Id_Sort_Users}    //th//span[@class="MuiButtonBase-root MuiTableSortLabel-root MuiTableSortLabel-active jss575"]
${Name_Sort_Users}    //th//span[@class="MuiButtonBase-root MuiTableSortLabel-root"]//span[.="Name"]
${LogIn_Sort_Users}    //th//span[@class="MuiButtonBase-root MuiTableSortLabel-root"]//span[.="Login"]
${Email_Sort_Users}    //th//span[@class="MuiButtonBase-root MuiTableSortLabel-root"]//span[.="Email"]
${Description_Sort_Users}    //th//span[@class="MuiButtonBase-root MuiTableSortLabel-root"]//span[.="Description"]
${Role_Sort_Users}    //th//span[@class="MuiButtonBase-root MuiTableSortLabel-root"]//span[.="Role"]
${CreatedAt_Sort_Users}    //th//span[@class="MuiButtonBase-root MuiTableSortLabel-root"]//span[.="Created at"]
${UpdateAt_Sort_Users}    //th//span[@class="MuiButtonBase-root MuiTableSortLabel-root"]//span[.="Updated at"]

# After Clicking Edit

${Name_Edit_Users}    //div//input[@id="name"]
${Role_Edit_Users}    //div//input[@id="role.id"]
${Email_Edit_Users}    //div//input[@id="email"]
${Description_Edit_Users}    //div//input[@id="description"]
${LogIn_Edit_Users}    //div//input[@id="login"]
${Password_Edit_Users}    //div//input[@id="password"]

${Save_Users}    //button//span[.="Save"]
${Delete_Users}    //button[@aria-label="Delete"]

*** Keywords ***

