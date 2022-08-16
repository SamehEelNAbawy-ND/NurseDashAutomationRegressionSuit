*** Settings ***
Library    SeleniumLibrary

*** Variables ***

#Sorting Table Columns
${Id_Sorting}    //span//span[.="Id"]
${Shift_Sorting}    //span//span[.="Shift"]
${Nurse_Sorting}    //span//span[.="Nurse"]
${ReliabilityScore_Sorting}    //span//span[.="Reliability Score"]
${Reliability_Sorting}    //span//span[.="Reliability"]
${StartTime_Sorting}    //span//span[.="Start time"]
${Status_Sorting}    //span//span[.="Status"]
${Distance_Sorting}    //span//span[.="Distance"]

*** Keywords ***
#Select Specific Nurse For a Shift

#UnSelect Specific Nurse For a Shift

#Select Specific Nurse For a Shift
