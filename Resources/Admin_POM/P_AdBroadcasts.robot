*** Settings ***
Library    SeleniumLibrary

*** Variables ***

# History Section
${History_BroadCast}    //button//span[.="History"]

${Id_Sorting_BroadCast}    //span[@data-sort="id"]
${Title_Sorting_BroadCast}    //span[@data-sort="title"]
${Message_Sorting_BroadCast}    //span[@data-sort="message"]
${SelectedNurses_Sorting_BroadCast}    //span[@data-sort="Selected nurses"]
${Method_Sorting_BroadCast}    //span[@data-sort="Method"]
${SendAt_Sorting_BroadCast}    //span[@data-sort="createdAt"]

# Send Message Section
${Message_BroadCast}    //button//span[.="Send message"]

${Title_Message_BraodCast}
${Message_Message_BraodCast}
${PushNotification_Message_BraodCast}
${Sms_Message_BraodCast}
${Email_Message_BraodCast}
${RelatedToFacility_Message_BraodCast}
${Facility_Message_BraodCast}

${DistanceFromFacility_Message_BraodCast}
${None_DistanceFacility_Message_BroadCast}    //ul//li//em[.="None"]
${5Miles_DistanceFacility_Message_BraodCast}    //ul//li[.="Within 5 Miles"]
${10Miles_DistanceFacility_Message_BraodCast}    //ul//li[.="Within 10 Miles"]
${15Miles_DistanceFacility_Message_BraodCast}    //ul//li[.="Within 15 Miles"]
${25Miles_DistanceFacility_Message_BraodCast}    //ul//li[.="Within 25 Miles"]
${50Miles_DistanceFacility_Message_BraodCast}    //ul//li[.="Within 50 Miles"]

${RelatedToShift_Message_BroadCast}

${_Message_BraodCast}
${_Message_BraodCast}
${_Message_BraodCast}

*** Keywords ***

