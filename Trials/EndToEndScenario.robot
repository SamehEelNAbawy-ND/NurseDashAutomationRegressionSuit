*** Settings ***
Library     SeleniumLibrary
Library  AppiumLibrary
Library  Process
Resource        ../Resources/Admin_POM/P_AdCommon.robot
Resource        ../Resources/Admin_POM/P_AdShift.robot

*** Variables ***
### Create Shift Needed Input Variables
${SpecificShift_Edit}    //td//a[@href="#/ViewShift/240978"]
# I want to replace it with Xpath of preceding sibling to that shift I target
${SpecificShift_Clone}    //td//a[@href="#/ViewShift/create?source=%7B%22applicants%22:0,%22autoSelectApplicant%22:false,%22autoSelectApplicantSelected%22:false,%22autoSelectType%22:%22standard%22,%22breakTime%22:0,%22createdAt%22:%222021-09-25T08:54:48.367Z%22,%22end_time%22:%222022-05-02T20:54:00.000Z%22,%22facility_id%22:145,%22facilityId%22:145,%22facilityName%22:%22Test%20Facility%22,%22facilityShortName%22:%22GOTF%22,%22facilityTimezone%22:%22America/Chicago%22,%22segmentId%22:3,%22segmentName%22:%22Healthcare%22,%22id%22:229019,%22isMinPaymentEnabled%22:false,%22payment.id%22:129700,%22role%22:%22Assisted%20Living%20/%20CNA%22,%22start_time%22:%222022-05-02T15:54:00.000Z%22,%22status%22:%22opened%22,%22type%22:%22CNA%22,%22unit%22:1,%22updatedAt%22:%222021-12-02T15:56:43.633Z%22%7D"]
${SpecificShift_Select}
${TargetedFacilityNumber}       5
${ShiftTypeNumber}      2
${RatePerHoure}     25
${NetPayPerHoure}       29
${StartShift_Date}      08-15-2022
${EndShift_Date}        08-15-2022
${AM}       1
${PM}       2      ## 2 >> PM , 1 >> AM
${StartShift_Time}      1250${PM}
${EndShift_Time}        0100${PM}
${TargetedShiftUnitNumber}      3
${UnitTypeCOVIDStatus}      Non-COVID Unit          ### Write Non-COVID Unit or COVID Unit
${ShiftDiscriptionFieldContent}     This Shift to Test Automation Testing
${Qualification_1}      COVID Vaccine

### Mobile App
${InstallUpdate}        //android.widget.Button[@text='INSTALL']
${PhoneNumber_SignIn}      //android.widget.EditText[@index='4']
${GetCode_SignIn}        //android.view.ViewGroup[@index='3']//android.view.ViewGroup[@index='0']
${Continuo_SignIn}       //android.view.ViewGroup[@index='3']//android.view.ViewGroup[@index='0']

${DeviceI_Use}      emulator-5554
${PhoneNumber}      8322349910

*** Test Cases ***
Rapid Cycle on Shift
        ### Add Shift
        Log_In_NurseDash
        Create New Shift  ${TargetedFacilityNumber}       ${ShiftTypeNumber}      ${RatePerHoure}     ${NetPayPerHoure}
        ...     ${StartShift_Date}      ${EndShift_Date}        ${StartShift_Time}      ${EndShift_Time}
        ...     ${TargetedShiftUnitNumber}      ${UnitTypeCOVIDStatus}      ${ShiftDiscriptionFieldContent}
        ...     ${Qualification_1}
        close browser

        ### Apply for Shift from Mobile App
        Open NurseDash App
        start process  appium -a localhost -p 4723  shell=True  alias=appiumserver  stdout=${CURDIR}/appium_stdout.txt  stderr=${CURDIR}/appium_stderr.txt
        process should be running  appiumserver
        sleep  10s
        open application  http://localhost:4723/wd/hub  platformName=Android  deviceName=${DeviceI_Use}  appPackage=com.nursedash  appActivity=com.nursedash.MainActivity  automationName=Uiautomator2
        wait until keyword succeeds  100s  1s      wait until page contains element        ${InstallUpdate}
        click element       ${InstallUpdate}
        click element       ${PhoneNumber_SignIn}
        input text      ${PhoneNumber_SignIn}       ${PhoneNumber}
        sleep       20s
        wait until keyword succeeds  100s  1s       wait until page contains element    ${PhoneNumber_SignIn}
        click element       ${PhoneNumber_SignIn}
        input text      ${PhoneNumber_SignIn}       ${PhoneNumber}
        hide keyboard
        sleep       2s
        click element     ${GetCode_SignIn}
        wait until page contains element        //android.widget.EditText[@index='7']
        input text      //android.widget.EditText[@index='7']       1111
        hide keyboard
        #click element       //android.widget.Button[@text='OK']
        #click element       ${Continuo_SignIn}
        #wait until page contains element
        #Keyword: Apply for shift
        #Terminate Process  appiumserver    kill=True
        wait until keyword succeeds  100s  1s       wait until page contains element        //android.view.ViewGroup[@index='1']//android.view.ViewGroup[@index='1']//preceding-sibling::android.view.ViewGroup[@index='1']//android.widget.TextView[@text='Hospice / STNA']
        click element       //android.view.ViewGroup[@index='1']//android.view.ViewGroup[@index='1']//preceding-sibling::android.view.ViewGroup[@index='1']//android.widget.TextView[@text='Hospice / STNA']



