*** Settings ***
Resource            base.robot

Test Setup          Star Session
Test Teardown       End Session

*** Variables ***
${check_thor}       id:thor
${check_iron}       css:input[value='iron-man']
${check_panther}    xpath://*[@id='checkboxes']/input[7]

*** Test Cases ***
Testing checkboxes with ids
    Go To                           ${url}/checkboxes
    Select Checkbox                 ${check_thor}
    Checkbox Should Be Selected     ${check_thor}
    Sleep                           3  
    # Recommended method

Testing checkboxes with CSS selectors
    [tags]      ironman
    Go To                           ${url}/checkboxes
    Select Checkbox                 ${check_iron}
    Checkbox Should Be Selected     ${check_iron}
    Sleep                           3
    # Recommended method

Testing checkboxes with XPATH selectors
    [tags]      black-panther
    Go To                           ${url}/checkboxes
    Select Checkbox                 ${check_panther}
    Checkbox Should Be Selected     ${check_panther}
    Sleep                           3