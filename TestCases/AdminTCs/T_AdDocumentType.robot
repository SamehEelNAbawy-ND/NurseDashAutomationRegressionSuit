*** Settings ***
Resource    ../Resources/POM/P_AdCommon.robot
Resource    ../Resources/POM/P_AdDocumentTypes.robot

*** Variables ***
${Name_NewDocumentType}     CPR Test 3
${Description_NewDocumentType}      COVID

*** Test Cases ***
Create New Document Type TC
        Log_In_NurseDash
        Click on SideBar Icons    ${DocumentTypes}
        Create Document Type    ${Name_NewDocumentType}     ${Description_NewDocumentType}
        wait until keyword succeeds    10000s    1s    wait until page contains element    //td//span[.="${Name_NewDocumentType}"]
        close browser