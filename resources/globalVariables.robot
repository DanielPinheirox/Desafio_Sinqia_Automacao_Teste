*** Variables ***
${screenshot_folder}                 path/to/screenshots 
${URL}                               https://blogdoagi.com.br/
${ICONE_PESQUISA_ABERTA}             XPATH=//*[@id="search-open"]
${CAMPO_PESQUISA}                    XPATH=//*[@class="search-field"]
${BOTAO_PESQUISAR}                   XPATH=//*[@value="Pesquisar"]
${TITULO_RESULTADO_BUSCA}            XPATH=//*[contains(text(),'Resultados da busca por: ')]
${RESULTADO_PESQUISA}                XPATH=//*[@id="primary"]
${RESULTADO}                         XPATH=//*[contains(text(),'{}')]
${XPATH_AUTO_COMPLETE}               XPATH=//*[contains(text(),'Agi')]


