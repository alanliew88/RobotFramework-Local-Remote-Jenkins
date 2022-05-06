*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${url}  https://agoda.com
${browser}  chrome


*** Test Cases ***
TC1
    open browser    ${url}   ${browser}
    maximize browser window
    sleep   5s
    press keys   ${none}     ESC
    input text    XPATH://*[@id="SearchBoxContainer"]/div[1]/div/div[2]/div/div/div[1]/div/div/input    kampar
    get window titles
    log title
    title should be     Agoda Official Site | Free Cancellation & Booking Deals | Over 2 Million Hotels
    close browser


**** keywords ***


