*** Settings ***
Resource            ../resources/pages/telaInicial/telaInicial.resource
Task Setup          Given Navegar até a tela Inicial do Agibank
Test Teardown       Then Fechar Navegador

*** Test Cases ***
Validar Botao Pesquisar
    Given que estou na tela inicial do Agibank
    When clicar no icone da pesquisa aberta
    Then valido botão de pesquisar habilitado

Validar Teste de Auto Complete
    Given que estou na tela inicial do Agibank
    When clicar no icone da pesquisa aberta
    And escreva no campo de pesquisa    Fina   
    Then valido o auto complete do resultado    Financeiro

Validar Pesquisa por palavras chave
    Given que estou na tela inicial do Agibank
    When clicar no icone da pesquisa aberta
    And escrever no campo de pesquisa     Financeiro
    Then valido se o primeiro resultado conter    Financeiro

Validar Pesquisa sem interação no check box
    Given que estou na tela inicial do Agibank
    When clicar no icone da pesquisa aberta
    And realizo uma pesquisa sem descrição
    Then valido resultado da busca sem nenhuma descrição

