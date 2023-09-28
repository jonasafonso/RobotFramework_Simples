*** Setting ***
Documentation    tudo começa aqui

Library    SeleniumLibrary

Resource    pages/Signup.Page.robot

*** Variables ***
${URL}          https://walkdog.vercel.app/signup
${BROWSER}      Chrome
${DELAY}        2s

*** Keywords ***
Start session
    Open Browser    ${URL}    ${BROWSER}
    Set Window Size    1920    1080

Finish session
    Capture Page Screenshot    
    Close Browser