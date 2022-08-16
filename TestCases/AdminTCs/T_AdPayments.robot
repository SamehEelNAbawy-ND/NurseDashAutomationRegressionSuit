*** Settings ***
Library     SeleniumLibrary
Resource    ../../Resources/Admin_POM/P_AdCommon.robot
Resource    ../../Resources/Admin_POM/P_AdPayments.robot

Test Setup      P_AdCommon.Log_In_NurseDash
#Test Teardown        close browser

*** Variables ***
${NurseName_UserPayment}        Sameh
${Ad_PaymentId}     240547
##### Payment Statuses [ Scheduled , Pending , Paid , processing , No Pay ]
${Ad_PaymentStatusBeforeMarking}     processing
${Ad_PaymentStatusAfterMarking}     Paid

*** Test Cases ***
Add user Payment without Shift
        Add a User Payment Without Specific Shift       ${NurseName_UserPayment}
#
#Mark Payment As Processing Tc
#        Mark Payment As Processing KW       ${Ad_PaymentId}     ${Ad_PaymentStatusBeforeMarking}        ${Ad_PaymentStatusAfterMarking}
#
#Mark Payment As Paid Tc
#        Mark Payment As Paid KW     ${Ad_PaymentId}     ${Ad_PaymentStatusBeforeMarking}        ${Ad_PaymentStatusAfterMarking}
#
