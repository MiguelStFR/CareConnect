1. **Marcação de Locais (3.2.1):**
    - **Caso de Teste 1:** Marcar um ponto no mapa e verificar se o marcador é exibido corretamente na posição desejada.
    - **Caso de Teste 2:** Marcar um local fora dos limites do mapa e verifica se o sistema impede a marcação inválida.
    - **Caso de Teste 3:** O usuário marca vários pontos em diferentes locais e verifica se todos os marcadores são exibidos corretamente.

2. **Parametrização dos Marcadores (3.2.2):**
    - **Caso de Teste 1:** Definir um marcador como "constante" e verificar se ele permanece visível até ser excluído.
    - **Caso de Teste 2:** Definir um marcador como "temporário" e verificar se ele desaparecerá após o período definido.
    - **Caso de Teste 3:** Definir um marcador sem especificar se é constante ou temporário e verificar se o sistema exibe uma mensagem de erro apropriada.

3. **Descrição do Marcador (3.2.3):**
    - **Caso de Teste 1:** Adicionar uma descrição detalhada ao marcador (por exemplo, "Prédio abandonado com várias pessoas sem-teto") e verificar' se a descrição é exibida corretamente quando o marcador é selecionado.
    - **Caso de Teste 2:** Tentar adicionar uma descrição muito longa ao marcador e verificar se o sistema limita o tamanho da descrição.
    - **Caso de Teste 3:** Adicionar um marcador sem nenhuma descrição e verificar se o sistema aceita essa entrada.

4. **Desmarcar o Local (3.2.4):**
    - **Caso de Teste 1:** Marcar um local e, em seguida, desmarcá-lo para verificar se o marcador é removido corretamente do mapa.
    - **Caso de Teste 2:** Tentar desmarcar um local que não tem permissão para ser desmarcado e verificar se será ou não removido.
    - **Caso de Teste 3:** Desmarcar vários locais e verificar se todos os marcadores foram removidos corretamente.

5. **Buscar Locais (3.2.5):**
    - **Caso de Teste 1:** Inserir um termo de busca e verifica se o sistema retorna os locais correspondentes no mapa.
    - **Caso de Teste 2:** Tenta inserir um filtro que não possui marcadores registrados e verificar se o sistema exibe uma mensagem de "nenhum resultado encontrado".
    - **Caso de Teste 3:** Buscar por um local específico (por exemplo, "Centro Belo Horizonte") e verificar se o sistema exibe o local correto no mapa, incluindo marcadores.

