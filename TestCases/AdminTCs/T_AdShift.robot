*** Settings ***
Resource    ../../Resources/Admin_POM/P_AdCommon.robot
Resource    ../../Resources/Admin_POM/P_AdShifts.robot

Test Setup      P_AdCommon.Log_In_NurseDash
Test Teardown        close browser

*** Variables ***
${SpecificShift_Edit}    //td//a[@href="#/ViewShift/240978"]
# I want to replace it with Xpath of preceding sibling to that shift I target
${SpecificShift_Clone}    //td//a[@href="#/ViewShift/create?source=%7B%22applicants%22:0,%22autoSelectApplicant%22:false,%22autoSelectApplicantSelected%22:false,%22autoSelectType%22:%22standard%22,%22breakTime%22:0,%22createdAt%22:%222021-09-25T08:54:48.367Z%22,%22end_time%22:%222022-05-02T20:54:00.000Z%22,%22facility_id%22:145,%22facilityId%22:145,%22facilityName%22:%22Test%20Facility%22,%22facilityShortName%22:%22GOTF%22,%22facilityTimezone%22:%22America/Chicago%22,%22segmentId%22:3,%22segmentName%22:%22Healthcare%22,%22id%22:229019,%22isMinPaymentEnabled%22:false,%22payment.id%22:129700,%22role%22:%22Assisted%20Living%20/%20CNA%22,%22start_time%22:%222022-05-02T15:54:00.000Z%22,%22status%22:%22opened%22,%22type%22:%22CNA%22,%22unit%22:1,%22updatedAt%22:%222021-12-02T15:56:43.633Z%22%7D"]
${SpecificShift_Select}
${TargetedFacilityNumber}       5
${ShiftTypeNumber}      2
${RatePerHoure}     25
${NetPayPerHoure}       29
${StartShift_Date}      08-17-2022
${EndShift_Date}        08-17-2022
${AM}       1
${PM}       2      ## 2 >> PM , 1 >> AM
${StartShift_Time}      0150${PM}
${EndShift_Time}        0200${PM}
${TargetedShiftUnitNumber}      3
${UnitTypeCOVIDStatus}      Non-COVID Unit          ### Write Non-COVID Unit or COVID Unit
${ShiftDiscriptionFieldContent}     This Shift to Test Automation Testing
${Qualification_1}      COVID Vaccine
${Qualification_2}      MTF
${Qualification_3}      LVN

*** Test Cases ***

Able to Create New Shift
    Click on SideBar Icons  ${Shifts}
    Create New Shift        ${TargetedFacilityNumber}       ${ShiftTypeNumber}      ${RatePerHoure}     ${NetPayPerHoure}
    ...     ${StartShift_Date}      ${EndShift_Date}        ${StartShift_Time}      ${EndShift_Time}
    ...     ${TargetedShiftUnitNumber}      ${UnitTypeCOVIDStatus}      ${ShiftDiscriptionFieldContent}
    ...     ${Qualification_1}

# Check that new shift is exist in shifts table

#Able to Select All Shifts in the page
#    wait until element is visible    ${Shifts}
#    click element    ${Shifts}
#
#    #Check box of select all
#    #wait until element is visible
#    wait until page contains element  ${Delet_Shifts}
#
#    click element    ${SelectAllCheckBox_Shifts}
#    checkbox should be selected    ${SelectAllCheckBox_Shifts}
#
#    #Check the number in the Top of the page is exist

#Verify that able to Edit Specific shift
#    Click on SideBar Icons    ${Shifts}
#    Edit Specific Shift    ${SpecificShift_Edit}

#Able to Delete Specific Shift Shift
#    Click on SideBar Icons  ${Shifts}
#    Delete Specific Shift Shift     ${ShiftId}
#    close browser


