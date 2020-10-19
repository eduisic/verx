#language: pt

      Funcionalidade: Consultar endereço

      @valido
      Esquema do Cenario: Consultar endereço via CEP
            Dado que informe o cep "<cep>"
            Quando efetuar a requisição
            Entao devo visualizar o código do IBGE referente ao endereço

            Exemplos: 
            | cep      |
            | 02408131 |
            | 41810012 |

      @inexistente
      Esquema do Cenario: Cep inválido
            Dado que informe o cep "<cep>"
            Quando efetuar a requisição
            Então devo visualizar que o cep é inexistente

            Exemplos:
            | cep      | 
            | 11111111 | 
            | 22222222 | 

      @invalido
      Esquema do Cenario: Cep inválido
            Dado que informe o cep "<cep>"
            Quando efetuar a requisição
            Então exibirá a <resposta>

            Exemplos:
            | cep       | resposta |
            | 950100100 | 400      |
            | 95010A10  | 400      |