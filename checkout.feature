            #language: pt

            Funcionalidade: [US-0003] - Tela de Cadastro - Checkout
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu Cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu estou na tela de Checkout

            Esquema do Cenário: Preenchimento dos dados pessoais para faturamento
            Quando o usuário preencher os dados pessoais com <nome> e <sobrenome>
            E preencher os campos de endereço com <pais>, <endereco>, <cidade> e <CEP>
            E preencher os campos para contato com <telefone> e <email>
            Então ao clicar no botão Finalizar Compra o sistema deve exibir a mensagem <mensagem>
            Exemplos:
            | nome | sobrenome | pais   | endereco | cidade | CEP       | telefone        | email            | mensagem                                        |
            | Jose | Silva     | Brasil | Rua X    | Manaus | 69036-000 | (92)99999-9999  | jose@ebac.com.br | Dados para faturamento atualizados com sucesso! |
            |      | Silva     | Brasil | Rua X    | Manaus | 69036-000 | (92)99999-9999  | jose@ebac.com.br | Preenchimento do campo Nome é obrigatório!      |
            | Jose |           | Brasil | Rua X    | Manaus | 69036-000 | (92)99999-9999  | jose@ebac.com.br | Preenchimento do campo Sobrenome é obrigatório! |
            | Jose | Silva     |        | Rua X    | Manaus | 69036-000 | (92)99999-9999  | jose@ebac.com.br | Preenchimento do campo País é obrigatório!      |
            | Jose | Silva     | Brasil |          | Manaus | 69036-000 | (92)99999-9999  | jose@ebac.com.br | Preenchimento do campo Endereço é obrigatório!  |
            | Jose | Silva     | Brasil | Rua X    |        | 69036-000 | (92)99999-9999  | jose@ebac.com.br | Preenchimento do campo Cidade é obrigatório!    |
            | Jose | Silva     | Brasil | Rua X    | Manaus |           | (92)99999-9999  | jose@ebac.com.br | Preenchimento do campo CEP é obrigatório!       |
            | Jose | Silva     | Brasil | Rua X    | Manaus | 69036-000 |                 | jose@ebac.com.br | Preenchimento do campo Telefone é obrigatório!  |
            | Jose | Silva     | Brasil | Rua X    | Manaus | 69036-000 | (92)99999-9999  |                  | Preenchimento do campo E-mail é obrigatório!    |
            | Jose | Silva     | Brasil | Rua X    | Manaus | 69036-000 | (92)99999-9999  | jose2ebac.com.br | E-mail informado é inválido!                    |
            | Jose | Silva     | Brasil | Rua X    | Manaus | 69036-000 | (92)99999-9999  | jose@ebac        | E-mail informado é inválido!                    |
            | Jose | Silva     | Brasil | Rua X    | Manaus | 69036-000 | (92)99999-9999  | @ebac.com.br     | E-mail informado é inválido!                    |
            | Jose | Silva     | Brasil | Rua X    | Manaus | xxxxx-xxx | (92)99999-9999  | jose@ebac.com.br | Campo CEP deve conter apenas números!           |
            | Jose | Silva     | Brasil | Rua X    | Manaus | 69036-000 | (xx) xxxxx-xxxx | jose@ebac.com.br | Campo Telefone deve conter apenas números!      |
            | Jose | Silva     | Abcdef | Rua X    | Manaus | 69036-000 | (92)99999-9999  | jose@ebac.com.br | País informado é inválido!                      |
