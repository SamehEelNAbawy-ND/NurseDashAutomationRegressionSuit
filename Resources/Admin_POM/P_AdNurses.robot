*** Settings ***
Library    SeleniumLibrary
Resource    P_AdCommon.robot

*** Variables ***

${SelectAll_Nurse}    //span[@class="MuiButtonBase-root MuiIconButton-root jss1695 MuiCheckbox-root MuiCheckbox-colorPrimary select-all MuiIconButton-colorPrimary"]//span//input
${SelectSpecificNurse_Nurse}    #depend on Nurse Id
${Edit_Nurse}    #depend on Nurse Id
${Delete_Nurse}    #depend on Nurse Id
${DeleteBySelect_Nurse}    #depend on Nurse Id
${AddFilter_Nurse}    //div//button[@aria-label="Add filter"]
${Create_Nurse}    //a[@href="#/Nurse/create"]
${Export_Nurse}
${SideArrowSpecficNurse_Nurse}    #depend on Nurse Id

#Sorting Nurses
${Id_Sorting_Nurse}
${Name_Sorting_Nurse}
${Rarting_Sorting_Nurse}
${ReliabilityScore_Sorting_Nurse}
${Reliability_Sorting_Nurse}
${Status_Sorting_Nurse}
${CreatedAt_Sorting_Nurse}

#After Click on Add Filter
${Id_AddFilter_Nurse}
${Phone_AddFilter_Nurse}
${Email_AddFilter_Nurse}
${Name_AddFilter_Nurse}
${Status_AddFilter_Nurse}
${Facility_AddFilter_Nurse}
${HomeMarket_AddFilter_Nurse}
${PositionType_AddFilter_Nurse}
${DocumentType_AddFilter_Nurse}
${Reliability_AddFilter_Nurse}

#After Click on Create
${Phone_Create_Nurse}    //div//input[@id="phone"]
${Name_Create_Nurse}    //div//input[@id="name"]
${UploadImage_Create_Nurse}    //div//input[@id="image"]
${Email_Create_Nurse}    //div//input[@id="email"]
${AreaList_Create_Nurse}    //div[@id="identity.area"]
${PositionTypeList_Create_Nurse}    //div[@id="identity.positionType"]
${Rating_Create_Nurse}    //div//input[@id="rating"]
${Address_Create_Nurse}    //div//input[@placeholder="Address"]
${AdditionalAddress_Create_Nurse}    //div//input[@name="additionalAddressInfo"]
${Save_Create_Nurse}    //button[@aria-label="Save"]

#After Click on Edit

${Phone_Edit_Main_Nurse}
${FunctionalId_Edit_Main_Nurse}
${Name_Edit_Main_Nurse}
${Image_Edit_Main_Nurse}
${Email_Edit_Main_Nurse}
${PositionType_Edit_Main_Nurse}
${Tech_PT_Edit_Main_Nurse}
${STNA_PT_Edit_Main_Nurse}
${RN_PT_Edit_Main_Nurse}
${MedicalAssist_PT_Edit_Main_Nurse}
${LPN_PT_Edit_Main_Nurse}
${CNA_PT_Edit_Main_Nurse}
${CMA_PT_Edit_Main_Nurse}
${PositionTypesList_Edit_Main_Nurse}    ${Tech_PT_Edit_Main_Nurse}    ${STNA_PT_Edit_Main_Nurse}    ${RN_PT_Edit_Main_Nurse}    ${MedicalAssist_PT_Edit_Main_Nurse}    ${LPN_PT_Edit_Main_Nurse}    ${CNA_PT_Edit_Main_Nurse}    ${CMA_PT_Edit_Main_Nurse}

${RNSpecialist_Edit_Main_Nurse}

${HomeMarket_Edit_Main_Nurse}
${Rating_Edit_Main_Nurse}
${Address_Edit_Main_Nurse}
${AdditionalAddress_Edit_Main_Nurse}
${Status_Edit_Main_Nurse}    //div//div[@id="status"]
${LimitVisibilityToggle_Edit_Main_Nurse}

${_Edit_FacilityAccess_Nurse}

${_Edit_Extra_Nurse}

${_Edit_OrintationMaterial_Nurse}

${_Edit_Activity_Nurse}

${_Edit_Preferences_Nurse}

${_Edit_ReliabilityEvent_Nurse}

${_Edit_PaymentMethod_Nurse}


*** Keywords ***

Create New Nurse KW
    [Arguments]    ${Pnone_NewNurse}   ${Name_NewNurse}    ${Email_NewNurse}    ${Area_NewNurse}    ${PositionType_NewNurse}    ${Rating_NewNurse}   ${Adress1_NewNurse}   ${Adress2_NewNurse}    ${AddAddress_NewNurse}
    Click Any Element    ${Create_Nurse}
    WAIT UNTIL PAGE CONTAINS ELEMENT    ${Name_Create_Nurse}
    input text    ${Phone_Create_Nurse}  ${Pnone_NewNurse}
    input text    ${Name_Create_Nurse}  ${Name_NewNurse}
    input text    ${Email_Create_Nurse}    ${Email_NewNurse}
    Choose from List    ${AreaList_Create_Nurse}    ${Area_NewNurse}
    Choose from List    ${PositionTypeList_Create_Nurse}   ${PositionType_NewNurse}
    input text    ${Rating_Create_Nurse}    ${Rating_NewNurse}
    #input text    ${Address_Create_Nurse}    ${Adress1_NewNurse}
    #Click Any Element    ${Adress2_NewNurse}
    input text      ${AdditionalAddress_Create_Nurse}  ${AddAddress_NewNurse}
    click button    ${Save_Create_Nurse}

Change Status
    [Arguments]    ${Status_NewNurse}
    Choose from List    ${Status_Edit_Main_Nurse}    ${Status_NewNurse}

Delete Nurse
    [Arguments]  ${Nurse_ID}
    Click Any Element  //a[@href="#/Nurse/${Nurse_ID}"]
    Click Any Element  //button[@aria-label="Delete"]

