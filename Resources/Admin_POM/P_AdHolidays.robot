*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${CreateHoliday}    //a[@href="#/Holiday/create"]
${Edit_Holiday}  //a[@href="#/Holiday/${Holiday_ID}"]
####  After Click Create
${OK_Calendar_Create}  //button//span[.="OK"]
${Yes_Create}  //button//span[.="Yes"]

##### Sorting
${Id_Sorting}    //th//span[@data-sort="id"]
${Name_Sorting}    //th//span[@data-sort="name"]
${HolidayDate_Sorting}    //th//span[@data-sort="holidayDate"]

# After Clicking on "Edit" Button
${HolidayName_Holidays}    //input[@id="name"]
${HolidayDate_Holidays}    //label[.="Holiday Date"]//following-sibling::div//input[@type="text"]
${Save_Holidays}    //div//button[@aria-label="Save"]
${Delete_Holidays}    //div//button[@aria-label="Delete"]

*** Keywords ***

Create Holiday
  [Arguments]  ${Holiday_Title}
  Click Any Element    ${CreateHoliday}
  input text    ${HolidayName_Holidays}  ${Holiday_Title}
  Click Any Element  ${HolidayDate_Holidays}
  Click Any Element  ${OK_Calendar_Create}
  sleep  2s
  click button  ${Save_Holidays}
  Click Any Element  ${Yes_Create}
  wait until keyword succeeds  1000s    1s    wait until page contains element    //span[.="${Holiday_Title}"]

Delete Holiday
  [Arguments]   ${Holiday_ID}   ${Holiday_Title}
  Click Any Element     ${Edit_Holiday}
  Click Any Element     ${Delete_Holidays}
  wait until page does not contain  //td//span[.="${Holiday_Title}"]
  sleep  10s

