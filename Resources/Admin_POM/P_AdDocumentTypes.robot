*** Settings ***
Library    SeleniumLibrary
Resource    P_AdCommon.robot

*** Variables ***
${SelectAll_DocumentType}    //span[@class="MuiButtonBase-root MuiIconButton-root jss632 MuiCheckbox-root MuiCheckbox-colorPrimary select-all MuiIconButton-colorPrimary"]
${Create_DocumentType}    //div//a[@href="#/QualificationType/create"]

# Sorting Table Elemnts
${Id_Sorting}    //span[@data-sort="id"]
${Name_Sorting}    //span[@data-sort="name"]
${Description_Sorting}    //span[@data-sort="description"]
${Avilable_Sorting}    //span[@data-sort="isAvailable"]
${DocumentExpire_Sorting}    //span[@data-sort="expires"]
${Category_Sorting}    //span[@data-sort="category"]
${ShiftCount_Sorting}    //span[@data-sort="shiftCount"]
${CreatedAt_Sorting}    //span[@data-sort="createdAt"]

# After Click on Create
${Name_DocumentType}    //input[@id="name"]
${Description_DocumentType}    //div//textarea[@id="description"]
${Category_DocumentType}    //div//div[@id="category"]
# After Click on category
${Vaccination_Category}    //ul//li[@data-value="vaccination"]
${TestResult_Category}    //ul//li[@data-value="test"]
${Certification_Category}    //ul//li[@data-value="certification"]
${Other_Category}    //ul//li[@data-value="other"]

${DocumentIsAvailable_DocumentType}    //input[@name="isAvailable"]
${DocumentCanExpire_DocumentType}    //input[@name="expires"]

${Save_DocumentType}    //div//button[@aria-label="Save"]

*** Keywords ***

Create Document Type
    [Arguments]    ${Name_NewDocumentType}    ${Description_NewDocumentType}
    wait until page contains element    ${Create_DocumentType}
    Click Any Element    ${Create_DocumentType}
    wait until page contains element    ${Name_DocumentType}
    input text    ${Name_DocumentType}    ${Name_NewDocumentType}
    input text    ${Description_DocumentType}    ${Description_NewDocumentType}
    click element    ${Category_DocumentType}
    Click Any Element    ${Certification_Category}
    click element    ${DocumentIsAvailable_DocumentType}
    click button     ${Save_DocumentType}

