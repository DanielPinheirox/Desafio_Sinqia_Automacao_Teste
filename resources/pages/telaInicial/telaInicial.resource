*** Settings ***
Resource    ../../../resources/main.robot

*** Keywords ***
que estou na tela inicial do Agibank
    ${URL Atual}    Get Location
    Should Be Equal As Strings    ${URL Atual}    ${URL}
    
clicar no icone da pesquisa aberta
     Element Should Be Visible    ${ICONE_PESQUISA_ABERTA}
     Click Button    ${ICONE_PESQUISA_ABERTA}
  
valido botão de pesquisar habilitado
    Sleep    2s
    Element Should Be Visible    ${BOTAO_PESQUISAR}

escreva no campo de pesquisa   
    [Arguments]          ${NOME_PESQUISAR}
    Input Text           ${CAMPO_PESQUISA}     ${NOME_PESQUISAR}

escrever no campo de pesquisa   
    [Arguments]          ${NOME_PESQUISAR}
    Input Text           ${CAMPO_PESQUISA}     ${NOME_PESQUISAR}
    Click Button         ${BOTAO_PESQUISAR}
    Sleep    2s

valido o auto complete do resultado
    [Arguments]          ${RESULTADO_PESQUISAR}
    ${XPATH}=            Format String    ${RESULTADO}    ${RESULTADO_PESQUISAR}               
    Element Should Be Visible   ${XPATH}

valido se o primeiro resultado conter
    [Arguments]          ${RESULTADO_PESQUISAR}
    ${XPATH}=            Format String    ${RESULTADO}    ${RESULTADO_PESQUISAR}               
    Should Contain    ${XPATH}    ${RESULTADO_PESQUISAR}

realizo uma pesquisa sem descrição  
    Click Button  ${BOTAO_PESQUISAR}

valido resultado da busca sem nenhuma descrição
    Should Not Be Empty    ${RESULTADO_PESQUISA}


    

