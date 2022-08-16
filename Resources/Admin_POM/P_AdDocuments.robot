*** Settings ***
Library    SeleniumLibrary

*** Variables ***
# Documents Main Page

${SelectAll_Documents}

${Id_Sorting}    //th//span[@data-sort="id"]
${Nurse_Sorting}    //th//span[@data-sort="nurseId"]
${Status_Sorting}    //th//span[@data-sort="status"]
${Expiration_Sorting}    //th//span[@data-sort="expiration"]
${SubmittedAt_Sorting}    //th//span[@data-sort="submittedAt"]
${CreatedAt_Sorting}    //th//span[@data-sort="createdAt"]

# After Clicking on AddFilter Button
${Nurse_AddFilter}    //li[@data-key="nurseId"]//span[.="Nurse"]
${DocumentType_AddFilter}    //li[@data-key="name"]//span[.="Document Type"]
${SubmittedAtDate_AddFilter}    //li[@data-key="submittedAtDate"]//span[.="Submitted at Date"]
${SubmittedAtRange_AddFilter}    //li[@data-key="submittedAtDateRange"]//span[.="Submitted at Range"]
${ExpirationDate_AddFilter}    //li[@data-key="expirationDate"]//span[.="Expiration Date"]
${ExpirationRange_AddFilter}    //li[@data-key="expirationDateRange"]//span[.="Expiration Range"]
${Status_AddFilter}    //li[@data-key="status"]//span[.="Status"]


*** Keywords ***


