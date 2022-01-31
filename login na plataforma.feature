            #language: pt

            Funcionalidade: Tela de login
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto: Dado que eu acesse a página de autenticação da EBAC-SHOP

            Cenário: Autenticação válida
            Quando eu digitar o <usuario> "fulano@ebacshop.com.br"
            E a <senha> "senha@1234"
            Então deve <redirecionar>.

            Cenário: Usuário ou senha inválidos
            Quando eu digitar o <usuario> "aaauioooqijk@ebacshop.com.br"
            E a <senha> "iu9872384"
            Então deve exibir uma mensagem de alerta: "Usuário ou senha inválidos"

            Esquema do Cenário: Autenticar múltiplos usuários
            Quando eu digitar usuário <usuario> 
            E senha <senha> 
            Então <redirecionar> redirecionar para tela de checkout

            Exemplos:
            | usuario                  | senha       | redirecionar                       |
            | "joao@ebacshop.com.br"   | "teste@123" | "Sim"                              |
            | "mariao@ebacshop.com.br" | "teste@123" | "Não"                              |
            | "ana@ebacshop.com.br"    | "teste@123" | "Não                               |
