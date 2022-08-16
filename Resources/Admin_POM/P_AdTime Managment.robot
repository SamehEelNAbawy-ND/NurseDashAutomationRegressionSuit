*** Settings ***
Library    SeleniumLibrary


*** Variables ***

${SelectAll_TimeManagment}    #Problem

# Sorting Elements in the table

${Id_Sorting_TimeMang}    //span[@data-sort="id"]//span[.="Id"]
${Nurse_Sorting_TimeMang}    //span[@data-sort="nurseId"]//span[.="Nurse"]
${Facility_Sorting_TimeMang}    //span[@data-sort="facilityId"]//span[.="Facility"]
${Shift_Sorting_TimeMang}    //span[@data-sort="shiftId"]//span[.="Shift"]
${Scheduled_Sorting_TimeMang}    ////span[@data-sort="shiftId"]//span[.="Scheduled"]
${CheckIn_Sorting_TimeMang}    //span[@data-sort="checkInSelectedTime"]//span[.="Check in"]
${CheckOut_Sorting_TimeMang}    //span[@data-sort="checkOutSelectedTime"]//span[.="Check out"]
${Duration_Sorting_TimeMang}    //span[@data-sort="duration"]//span[.="Duration"]
${PreAdjPay_Sorting_TimeMang}    //span[@data-sort="netPay"]//span[.="Pre-Adjustment Pay"]
${ClinicalRate_Sorting_TimeMang}    //span[@data-sort="shiftOverallRating"]//span[.="Clinician Rating"]

# After Clicking on Add Filter

${Id_AddFilter_TimeMang}    //ul//li[@data-key="id"]
${Facility_AddFilter_TimeMang}    //ul//li[@data-key="facilityId"]
${Location_AddFilter_TimeMang}    //ul//li[@data-key="area"]
${Nurse_AddFilter_TimeMang}    //ul//li[@data-key="nurseId"]
${ShiftId_AddFilter_TimeMang}    //ul//li[@data-key="shiftId"]
${Date_AddFilter_TimeMang}    //ul//li[@data-key="date"]
${DateRange_AddFilter_TimeMang}    //ul//li[@data-key="dateRange"]

*** Keywords ***

