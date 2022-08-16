*** Settings ***
Library    SeleniumLibrary

*** Variables ***

${SelectAll_SystemLogs}    //th//span[@class="MuiButtonBase-root MuiIconButton-root jss270 MuiCheckbox-root MuiCheckbox-colorPrimary select-all MuiIconButton-colorPrimary"]

# Sorting Elements in the Table

${Id_Sort_SystemLogs}    //th//span[@data-sort="id"]
${UserType_Sort_SystemLogs}    //th//span[@data-sort="userType"]
${UserName_Sort_SystemLogs}    //th//span[@data-sort="userName"]
${UserRole_Sort_SystemLogs}    //th//span[@data-sort="userRole"]
${ActionName_Sort_SystemLogs}    //th//span[@data-sort="actionName"]
${ActionAllowed_Sort_SystemLogs}    //th//span[@data-sort="actionAllowed"]
${EventDate_Sort_SystemLogs}    //th//span[@data-sort="createdAt"]

*** Keywords ***

