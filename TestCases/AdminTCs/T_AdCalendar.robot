*** Settings ***
Resource    ../Resources/POM/P_AdCommon.robot
Resource    ../Resources/POM/P_AdCalender.robot
Resource    ../Resources/POM/P_AdShifts.robot
Resource    ../Resources/POM/P_AdCalender.robot

*** Variables ***
# Months >>> [January, February, March, April, May,June, July, August, Sebtember, October, November, December]

#//div//span[@class="rbc-toolbar-label" and .="Month year"]

${PreviousMonth_Calendar}  //div//span[@class="rbc-toolbar-label" and .="December 2021"]
${CurrentMonth_Calendar}    //div//span[@class="rbc-toolbar-label" and .="January 2022"]
${NextMonth_Calendar}    //div//span[@class="rbc-toolbar-label" and .="February 2022"]

*** Test Cases ***
#Click on a Specific Group of Shifts
#    [Arguments]    ${Month}    ${Day}    ${Shift_Type}
#    Log_In_NurseDash
#    wait until page contains    ${sidebaricon}
#    click link    ${Calender}
#    click link

Check that you able to go to next month in calendar
    Log_In_NurseDash
    Click on Next or Previous Month    ${CurrentMonth_Calendar}    ${NextMonth_Calendar}    ${NextButton_Calendar}
    close browser

Check that you able to go to Previous month in calendar
    Log_In_NurseDash
    Click on Next or Previous Month     ${CurrentMonth_Calendar}  ${PreviousMonth_Calendar}  ${BackButton_Calendar}
    close browser

Check that after click on Today Button you are in current Month [By Next Button]
    Log_In_NurseDash
    Click on Next or Previous Month    ${CurrentMonth_Calendar}    ${NextMonth_Calendar}    ${NextButton_Calendar}
    Click on Today Button    ${CurrentMonth_Calendar}    ${TodayButton_Calendar}
    close browser

Check that after click on Today Button you are in current Month [By Previous Button]
    Log_In_NurseDash
    Click on Next or Previous Month     ${CurrentMonth_Calendar}  ${PreviousMonth_Calendar}  ${BackButton_Calendar}
    Click on Today Button    ${CurrentMonth_Calendar}    ${TodayButton_Calendar}
    close browser

















