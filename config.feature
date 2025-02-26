            #language: pt

            Funcionalidade: [US-0001]Configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            Desejo também escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que estou na página de configuração do produto

            Esquema do Cenário: Configuração do produto de acordo com meu gosto e tamanho
            Quando eu clico no botão selecionar <opcao>
            Então o sistema deve manter selecionado <opcao> do produto
            E com o botão comprar deve ficar destacado
            Exemplos:
            | opcao              |
            | cor                |
            | tamanho            |
            | quantidade_produto |

            Esquema do Cenário: Seleção de produtos com tamanho e cor diferentes
            Quando eu seleciono uma camisa da cor <cor>
            E tamanho <tamanho>
            E adiciono a quantidade <quantidade>
            Então o sistema deve acrescentar o produto no carrinho
            Exemplos:
            | cor      | tamanho | quantidade |
            | rosa     | P       | 1          |
            | rosa     | M       | 2          |
            | rosa     | G       | 3          |
            | vermelho | P       | 1          |
            | azul     | M       | 2          |
            | amarelo  | G       | 3          |

            Esquema do Cenário: Quantidade limite de produtos
            Quando eu seleciono <quantidade> e insiro no carrinho
            Então o sistema deve apresentar <mensagem>
            Exemplos:
            | Quantidade | Limite | Mensagem                                       |
            | 15         | 10     | "Quantidade limite de 10 unidades por compra!" |
            | 20         | 10     | "Quantidade limite de 10 unidades por compra!" |
            | 07         | 10     | "Incluído com Sucesso!"                        |
            | 10         | 10     | "Incluído com Sucesso!"                        |

            Cenário: Limpar a configuração do produto selecionado
            Quando eu clico no botão limpar configuração
            Então o sistema deve limpar a configuração do produto
            E a quantidade do produto deve ser 1
            E a cor do produto não deve estar selecionada
            E o tamanho do produto não deve estar selecionado





