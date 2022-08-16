*** Settings ***
Library  AppiumLibrary
Library  Process

*** Variables ***
${InstallUpdate}        //android.widget.Button[@text='INSTALL']
${PhoneNumber_SignIn}      //android.widget.EditText[@index='4']
${GetCode_SignIn}        //android.view.ViewGroup[@index='3']//android.view.ViewGroup[@index='0']
${Continuo_SignIn}       //android.view.ViewGroup[@index='3']//android.view.ViewGroup[@index='0']

${DeviceI_Use}      emulator-5554
${PhoneNumber}      8322349910

*** Test Cases ***
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
#    Terminate Process  appiumserver    kill=True
    wait until keyword succeeds  100s  1s       wait until page contains element        //android.view.ViewGroup[@index='1']//android.view.ViewGroup[@index='1']//preceding-sibling::android.view.ViewGroup[@index='1']//android.widget.TextView[@text='Hospice / STNA']
    click element       //android.view.ViewGroup[@index='1']//android.view.ViewGroup[@index='1']//preceding-sibling::android.view.ViewGroup[@index='1']//android.widget.TextView[@text='Hospice / STNA']

