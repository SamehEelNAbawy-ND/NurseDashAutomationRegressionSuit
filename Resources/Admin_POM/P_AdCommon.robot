*** Settings ***
Library     SeleniumLibrary

*** Variables ***
#Related to Log In to Nurse Dash Website
${SandboxWeb}    https://admin-sandbox.nursedash.com/#/login
${StagingWeb}    https://admin-staging.nursedash.com/#/login
${Chrome_Browser}    chrome
${FireFox_Browser}    fire fox
${UserName_Sandbox}    Sameh
${Password_Sandbox}    Sameh12345
${UserName_Staging}    sameh
${Password_Staging}    kU5p6P6wLuyWmjDS

${UserName_LogIn}    //input[@name="username"]
${Password_LogIn}    //input[@id="password"]
${SignInButton_LogIn}    //button//span[.="Sign in"]

#Upper Bar Icons XPath
${SideBarIcon_Common}    //button[@aria-label="open drawer"]
${RefreshIcon_Common}    //div//button[@aria-label="Refresh"]
${ProfileIcon_Common}    //div//button[@aria-label="Profile"]
${LogOutProfileIcon_Common}    //div//li[@tabindex="0"]
${AddFilterButton_Common}    //div//button[@aria-label="Add filter"]
${ExportButton_Common}    //div//button[@aria-label="Export"]
${NextButton_Common}    //button//span[.="Next"]
${RowPerPage_Common}    //div[@class="MuiSelect-root MuiSelect-select MuiTablePagination-select MuiSelect-selectMenu MuiInputBase-input MuiInputBase-inputSelect"]

#Side Bar Icons XPath
${Calender}    //div//a[@href="#/Calendar"]
${Shifts}    //div//a[@href="#/ViewShift"]
${Payments}    //div//a[@href="#/ViewShiftPayment"]
${ShiftApplications}    //div//a[@href="#/ViewShiftApplication"]
${Facilities}    //div//a[@href="#/Facility"]
${Holidays}    //div//a[@href="#/Holiday"]
${ShiftTypes}    //div//a[@href="#/FacilityType"]
${ShiftUnits}    //div//a[@href="#/ShiftUnit"]
${Areas}    //div//a[@href="#/Area"]
${DocumentTypes}    //div//a[@href="#/QualificationType"]
${Nurses}    //div//a[@href="#/Nurse"]
${Documents}    //div//a[@href="#/ViewDocument"]
${TimeManagment}    //div//a[@href="#/TimeManagement"]
${BroadCast}    //div//a[@href="#/Broadcast"]
${Messages}    //div//a[@href="#/Messages"]
${Users}    //div//a[@href="#/User"]
${Roles}    //div//a[@href="#/Role"]
${SystemLog}    //div//a[@href="#/SystemLog"]
${LogOut}    //div//li[@tabindex="-1"]

*** Keywords ***
## I wanna to add keywords to the most used steps related to this part
# Clicking on side bar [Opened/closed]
# Parts in side bar Opened
#Loged out from profil
#Click on refresh page

Log_In_NurseDash
    open browser    ${StagingWeb}    ${Chrome_Browser}
    maximize browser window
    wait until keyword succeeds    1000s    1s    input text    ${UserName_LogIn}  ${UserName_Staging}
    input password    ${Password_LogIn}    ${Password_Staging}
    click element    ${SignInButton_LogIn}

Log In with Sandbox

Log In with Staging



#Select All Parameters From the table


#Check that number of Selected Parameters Equal to Expected


#Select Specific Row From the Table

#Edit Specific Element

#Delete Specific Element

#Sort Rows depend on Specific Parameter

Click on Specific Button
    [Arguments]    ${AnyButton}
    wait until keyword succeeds    1000s    1s   wait until element is visible    ${AnyButton}
    click button    ${AnyButton}

Click on SideBar Icons
    [Arguments]    ${SideBarIcon}
    wait until keyword succeeds    100s    1s   wait until element is visible    ${SideBarIcon}
    click link    ${SideBarIcon}

Click Any Element
    [Arguments]    ${AnyElement}
    wait until keyword succeeds  100s  1s  wait until page contains element    ${AnyELement}
    click element    ${AnyELement}

Click on Check Box ND Tables
    [Arguments]    ${ChkB_Page}
    Click Any Element    ${ChkB_Page}

Choose from List
    [Arguments]    ${TargetedList}    ${TargetedOption}
    wait until keyword succeeds    100s    1s  wait until page contains element    ${TargetedList}
    click element    ${TargetedList}
    wait until keyword succeeds    100s    1s  wait until page contains element    ${TargetedOption}
    click element    ${TargetedOption}

Log Out NurseDash
    click button    ${LogOut}

Check that New Element u created Exist
    [Arguments]     ${NewElement_UCreated}
    wait until keyword succeeds    100s    1s      wait until page contains element  ${NewElement_UCreated}

Check that Element is Deleted
    [Arguments]     ${TargetedElement}
    wait until keyword succeeds    100s    1s       wait until page wait until page does not contain element



