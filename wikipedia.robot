*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${wikipedia_login}  RobotTest
${wikipedia_password}   RobotFramework
*** Keywords ***
Login Wikipedia
    [Arguments]     ${login}    ${password}
    Open Browser    https://pl.wikipedia.org   chrome
    Click Element   id:pt-login
    Input Text  id:wpName1  ${login}
    Input Password  id:wpPassword1  ${password}
    Click Button    id:wpLoginAttempt
    Checkbox Should Not Be Selected    id:wpRemember
    Select Checkbox     id:wpRemember
    Input Text      id:searchInput       Anna Lewandowska
    Click Button    id:searchButton
*** Test Cases ***
Search In Wikipedia
    Login Wikipedia
    Sleep   2
    Capture Page Screenshot


Unsuccesseful Login To Wikipedia
    Login Wikipedia
    sleep  2
    Wait Until Element Is Visible   css:.mw-message-box-error   timeout=5
    ${my_error_message}  Get Text    css:.mw-message-box-error
    Log     ${my_error_message}
    Log To Console      ${my_error_message}