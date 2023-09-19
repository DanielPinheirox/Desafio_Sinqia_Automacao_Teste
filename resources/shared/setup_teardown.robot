*** Settings ***
Resource    ../../resources/main.robot

*** Keywords ***
Given navegar até a tela Inicial do Agibank
    Open Browser                  ${URL}  chrome
    Maximize Browser Window

Fechar Navegador
    Close Browser