*** Settings ***
Library    SeleniumLibrary
Resource   P_AdCommon.robot

*** Variables ***
${ShiftNumber}    229019
${Specific_Shift}    //td//span[.="${ShiftNumber}"]

# Main Information for facility we will test with
${FacilityName}    Sameh
${Unit}    //li[.="Hospice"]

                #### Main Page of Shift ####
${CreateButton}    //div//a[@aria-label="Create"]
${EditShiftButton}    //td//a[@aria-label="Edit"]
${SelectAllCheckBox_Shifts}    //span[@class="MuiButtonBase-root MuiIconButton-root jss293 MuiCheckbox-root MuiCheckbox-colorPrimary select-all MuiIconButton-colorPrimary"]//span//input[@type="checkbox"]
${DeletAfterClickCheckBox}    //div//button[@aria-label="Delete"]
${DeleteShiftButton_MainShift}     //span[contains(text(),"${ShiftID}")]//parent::td//preceding-sibling::td//span//span//input[@type="checkbox"]
${DeleteShiftButton_Shift}      //div//button[@aria-label="Delete"]
${DeletePopUP_Shift}        //div[@class="MuiDialogContent-root"]//parent::div[.="The action cannot be undone."]//following-sibling::div//button[@aria-label="Delete"]
${ShiftDeleted_MainShift}       //span[.="${ShiftID}"]//parent::td//following-sibling::td//div[.="cancelled"]
${CloneShiftButton_MainShift}       //span[.="${ShiftId}"]//parent::td//following-sibling::td//a[@aria-label="Clone"]
${EditButton_Shift}     //span[.="Edit"]

                #### After Click on Add Filtter####
${Id_Filter}    //ul//li[@data-key="id"]
${Facility_Filter}    //ul//li[@data-key="facility_id"]
${Segment_Filter}    //ul//li[@data-key="segmentId"]
${Location_Filter}    //ul//li[@data-key="areas"]
${ShiftType_Filter}    //ul//li[@data-key="type"]
${ShiftUnit_Filter}    //ul//li[@data-key="unit"]
${Status_Filter}    //ul//li[@data-key="status"]
${UcwRisk_filter}    //ul//li[@data-key="ucwRisk"]
${NurseProximity_Filter}    //ul//li[@data-key="nurseProximity"]
${PreviousStatus_Filter}    //ul//li[@data-key="prevStatus"]
${HasApplicants_Filter}    //ul//li[@data-key="hasApplicants"]
${Nurse_Filter}    //ul//li[@data-key="assigned_nurse_id"]
${Date_Filter}    //ul//li[@data-key="date"]
${DateRange_Filter}    //ul//li[@data-key="dateRange"]
${StartTime_Filter}    //ul//li[@data-key="timeRange"]


            ##### After Clicking on Create Button #####
${Facility_CreateShift}    //input[@id="facility_id"]
${Unit_CreateShift}    //div[@id="unit"]
${Type_CreateShift}    //div[@id="type"]
${UnitClassification_CreateShifts}    //div[@id="unitDescription"]
${Qualifications_CreateShift}    //div[@id="mui-component-select-qualifications"]
${Description_CreateShift}    //div[@class="MuiInputBase-root MuiFilledInput-root MuiFilledInput-underline MuiInputBase-fullWidth MuiInputBase-formControl MuiInputBase-multiline MuiFilledInput-multiline MuiInputBase-marginDense MuiFilledInput-marginDense"]
${StartTime_CreateShift}    //label[contains(text(),"Start time")]//following-sibling::div[@class="MuiInputBase-root MuiFilledInput-root MuiFilledInput-underline MuiInputBase-formControl"]//input[@class="MuiInputBase-input MuiFilledInput-input"]
${EndTime_CreateShift}    //label[contains(text(),"End time")]//following-sibling::div[@class="MuiInputBase-root MuiFilledInput-root MuiFilledInput-underline MuiInputBase-formControl"]//input[@class="MuiInputBase-input MuiFilledInput-input"]
${RateRepHoure_CreateShift}    //div//input[@aria-describedby="rate-helper-text"]
${NetPayPerHoure_CreateShift}    //div//input[@name="net_pay"]
${BreakTime_CreateShift}    //div//input[@name="breakTime"]
${ChooseTargetedFacility_CreateShift}       //li[@id="downshift-0-item-${TargetedFacilityNumber}"]
${ChooseTargetedShiftUnit_CreateShift}     (//ul[@class="MuiList-root MuiMenu-list MuiList-padding"]//li)[${TargetedShiftUnitNumber}]
${ChooseTargetedShiftType_CreateShift}     (//ul[@role="listbox"]//li)[${ShiftTypeNumber}]
${ChooseCOVID-NonCOVIDUnit_CreateShift}     //ul//li[@data-value='${UnitTypeCOVIDStatus}']
${ChooseQualificationsField_CreateShift}        //div[@id="mui-component-select-qualifications"]
##${QualificationList_CreateShift}        (//ul[@class="MuiList-root MuiMenu-list MuiList-padding"]//li)[${QualificationID}]
${DiscriptionField_CreateShift}     //textarea[@id="description"]
${StartTime_CreateShift}        //label[contains(text(),"Start time")]//following-sibling::div//input[@class="MuiInputBase-input MuiFilledInput-input"]
${EndTime_CreateShift}      //label[contains(text(),"End time")]//following-sibling::div//input[@class="MuiInputBase-input MuiFilledInput-input"]
${Save_CreateShift}     //button[@aria-label="Save"]

            #### After Clicking on Edit Button for a specific shift####
${PaymentSection_Shifts}    //div//a[@href="#/ViewShift/91335/1"]
${Save_Shifts}    //div//button[@aria-label="Save"]
${Delet_Shifts}    //div//button[@aria-label="Delete"]

#Main Section in Editing Shift
${MainSection_Shifts}    //div//a[@href="#/ViewShift/91335"]
${Facility_Main}    //div//input[@id="facility_id"]
${Unit_Main}    //div//div[@aria-labelledby="unit-label unit"]
${Type_Main}    //div//div[@aria-labelledby="type-label type"]
${Qualification_Main}    //div//div[@aria-labelledby=" mui-component-select-qualifications"]
${Description_Main}    //div[@class="MuiInputBase-root MuiOutlinedInput-root MuiInputBase-fullWidth MuiInputBase-formControl MuiInputBase-multiline MuiOutlinedInput-multiline MuiInputBase-marginDense MuiOutlinedInput-marginDense"]
${RatePerHoure_Main}    //div//input[@id="rate"]
${NetPayPerHoure_Main}    //div//input[@id="net_pay"]
${Status_Main}    //div//div[@id="status"]
${StartTime_Main}    //label[text()="Start time"]//following-sibling::div//input
${EndTime_Main}    //label[text()="End time"]//following-sibling::div//input
${AutoSelect_Main}    //span//input[@id="autoSelectApplicant"]
${AutoSelectionType_Main}    //div//div[@id="autoSelectType"]

*** Keywords ***

Filter Shifts upon specific parameter
    [Arguments]    ${Targeted_Filter}
    Click on Specific Button    ${AddFilterButton_Common}
    Click Button Element    ${Targeted_Filter}

Create New Shift
     ## Enter ${TargetedFacilityNumber} as facility index in the list of facilities
    [Arguments]     ${TargetedFacilityNumber}       ${ShiftTypeNumber}      ${RatePerHoure}     ${NetPayPerHoure}
    ...     ${StartShift_Date}      ${EndShift_Date}        ${StartShift_Time}      ${EndShift_Time}
    ...     ${TargetedShiftUnitNumber}      ${UnitTypeCOVIDStatus}      ${ShiftDiscriptionFieldContent}
    ...     ${Qualification_1}
    wait until element is visible    ${CreateButton}
    click link    ${CreateButton}
    wait until element is visible    ${Facility_CreateShift}
    Click element    ${Facility_CreateShift}
    wait until keyword succeeds    1000s    1s  wait until element is visible    ${ChooseTargetedFacility_CreateShift}
    click element    ${ChooseTargetedFacility_CreateShift}
    click element    ${Unit_CreateShift}
    wait until element is visible    ${ChooseTargetedShiftUnit_CreateShift}
    click element    ${ChooseTargetedShiftUnit_CreateShift}
    click element    ${Type_CreateShift}
    wait until element is visible   ${ChooseTargetedShiftType_CreateShift}
    click element    ${ChooseTargetedShiftType_CreateShift}
    wait until page contains element        ${UnitClassification_CreateShifts}
    click element       ${UnitClassification_CreateShifts}
    wait until page contains element        ${ChooseCOVID-NonCOVIDUnit_CreateShift}
    click element       ${ChooseCOVID-NonCOVIDUnit_CreateShift}
    click element    ${ChooseQualificationsField_CreateShift}
    wait until element is visible    //li[@data-value="${Qualification_1}"]
    click element    //li[@data-value="${Qualification_1}"]
    wait until element is visible    //li[@data-value="${Qualification_2}"]
    click element    //li[@data-value="${Qualification_2}"]
    wait until element is visible    //li[@data-value="${Qualification_3}"]
    click element    //li[@data-value="${Qualification_3}"]
    double click element  ${DiscriptionField_CreateShift}
    input text    ${DiscriptionField_CreateShift}    ${ShiftDiscriptionFieldContent}
    input text    ${StartTime_CreateShift}    ${StartShift_Date}
    press keys    None  TAB
    press keys    None  ${StartShift_Time}
    input text    ${EndTime_CreateShift}    ${EndShift_Date}
    press keys    None  TAB
    press keys    None  ${EndShift_Time}
    input text  ${RatePerHoure_Main}    ${RatePerHoure}
    input text  ${NetPayPerHoure_Main}  ${NetPayPerHoure}
    click button  ${Save_CreateShift}
    Sleep       10s

Export Report for shifts
    Click on Specific Button    ${ExportButton_Common}

Edit Specific Shift
    [Arguments]    ${Shift_EditButton}
    wait until page contains element    ${Shift_EditButton}
    Click Button Element    ${Shift_EditButton}


Delete Specific Shift Shift
    [Arguments]  ${ShiftID}
    wait until keyword succeeds    100s    1s    wait until page contains element  ${EditButton_Shift}
    Click Any Element   ${DeleteShiftButton_MainShift}
    Click Any Element   ${DeleteShiftButton_Shift}
    Click Any Element   ${DeletePopUP_Shift}
    wait until keyword succeeds  100s  1s   wait until page contains element        ${ShiftDeleted_MainShift}

Clone Shift
    [Arguments]     ${ShiftId}
    Click on SideBar Icons  ${Shifts}
    Click Any Element  ${CloneShiftButton_MainShift}
    wait until element is visible   ${RatePerHoure_Main}
    Sleep   5s
    click button   ${Save_Shifts}


Select All Shifts in the page
    wait until page contains element    ${SelectAllCheckBox_Shifts}
    Click Button Element    ${SelectAllCheckBox_Shifts}






