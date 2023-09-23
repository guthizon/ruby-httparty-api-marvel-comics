Feature: Validar endpoint de histórias em quadrinhos

  Scenario: Verificar se o total de registros é igual ao valor do campo "limit"
    Given que eu tenha uma chave de API válida da Marvel
    When eu fizer uma requisição para o endpoint de histórias em quadrinhos
    Then o total de registros deve ser igual ao valor do campo limit

    
  Scenario: Verificar se as informações de quadrinhos do Ant-Man estão corretas
    Given que eu tenha uma chave de API válida da Marvel
    When eu fizer uma requisição para o endpoint de histórias em quadrinhos
    Then eu devo validar as informações da história em quadrinho do Ant-Man