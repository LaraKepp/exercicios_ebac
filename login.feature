            #language: pt

            Funcionalidade: [US-0002] Login na plataforma
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto: Dado que eu acesse minha conta no portal EBAC-SHOP
            
            Cenário: Login usuário válido
            Quando eu digitar o usuário "jose@ebac.com.br"
            E a senha "123456"
            Então deve ser redirecionado para a tela de checkout
            
            Cenário: Usuário
            Dado que eu acesse minha conta no portal EBAC-SHOP
            Quando eu digitar o usuário "jose@ebac.com.br"
            E a senha "1222a6"
            Então deve exibir uma mensagem de alerta: "Usuário ou senha inválidos"
