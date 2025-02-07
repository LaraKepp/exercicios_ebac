            #language: pt

            Funcionalidade: [US-0002] Login na plataforma
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que os usuários estão tentando realizar login na plataforma
            | nome  | email             | senha   | mensagem                           |
            | José  | jose@ebac.com.br  | 123456  | Usuário <nome> logado com sucesso! |
            | Maria | maria@ebac.com.br | 987654  | Usuário <nome> logado com sucesso! |
            | João  | joao@ebac.com.br  | ertyuio | Usuário ou senha inválidos!        |
            
            Cenário: Login de usuário com redirecionamento para a tela de checkout
            Quando o usuário informar o email <email> e senha <senha>
            Então o usuário <nome> deve ser redirecionado para a tela de checkout
            E a mensagem deve ser exibida na tela