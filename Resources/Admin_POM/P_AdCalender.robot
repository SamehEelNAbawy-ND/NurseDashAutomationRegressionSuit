*** Settings ***
Library    SeleniumLibrary
Resource    Resources/POM/P_AdCommon.robot

*** Variables ***

# Will be used to identify Shifts of every day
${TotalShiftsFrame}    //div[@style="background-color: rgb(136, 136, 136);"]
${NoApplicantsFrame}    //div[@style="background-color: rgb(187, 119, 187);"]
${CancelledFrame}    style="background-color: rgb(187, 119, 119);"
${WithApplicantsFrame}    style="background-color: rgb(119, 119, 187);"
${PendingReviewFrame}    style="background-color: rgb(236, 195, 11);"
${ConfirmedFrame}    style="background-color: rgb(119, 187, 187);"

#Days in the page
${Sunday}    //span[.="Sun"]
${Monday}    //span[.="Mon"]
${Tuesday}    //span[.="Tue"]
${Wensday}    //span[.="Wed"]
${Thursday}    //span[.="Thu"]
${Friday}    //span[.="Fri"]
${Saterday}    //span[.="Sat"]

${TodayButton_Calendar}    //span//button[@type="button" and .="Today"]
${BackButton_Calendar}    //span//button[@type="button" and .="Back"]
${NextButton_Calendar}    //span//button[@type="button" and .="Next"]

${MonthInCentreOfPage}    //span[.="December 2021"]    ## you can replace december with the title in the middle of the page

*** Keywords ***
#This keyword allow u to select any group of shifts in the calendar you just apecify
#shift type{TotalShifts ,No Applicants, Cancelled, WithApplicants, PendingReview, Confirmed}

Click on Grop of Shifts
    [Arguments]    ${Month}    ${Day}    ${Shift_Type}

Click on Next or Previous Month
    [Arguments]    ${CurrentMonth}    ${Next-Prev_Month}    ${Next-Prev_Button}
    wait until page contains element    ${CurrentMonth}
    Click on Specific Button    ${Next-Prev_Button}
    page should contain element    ${Next-Prev_Month}

Click on Today Button
    [Arguments]    ${CurrentMonth}  ${TodayButton_Calendar}
    Click on Specific Button    ${TodayButton_Calendar}
    page should contain element    ${CurrentMonth}







