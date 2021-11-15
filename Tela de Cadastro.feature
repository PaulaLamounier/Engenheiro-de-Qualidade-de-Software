            #languade: pt

            Funcionalidade: Tela de Cadastro - Checkout
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Cenário: Obrigatoriedade de campos
            Dado que eu não informe o Nome, Sobrenome, País, Endereço, Cidade, CEP, Telefone e/ou Endereço de e-mail
            Quando eu clicar em Finalizar Compra
            Então deve apresentar a mensagem "Preencha todos os campos obrigatórios."

            Cenário: e-mail inválido
            Dado que eu informe um e-mail inválido
            Quando eu clicar em Finalizar Compra
            Então deve apresentar a mensagem "Informe um e-mail válido."

            Cenário: Campo não obrigatórios vazios
            Dado que eu deixe algum campo não obrigatório vazios
            Quando eu clicar em Finalizar Compra
            Então deve apresentar a mensagem de alerta "O <nome do campo> não foi informado. Deseja continuar?"

            Esquema do Cenário: Validação de e-mail
            Quando eu informar o <e-mail>
            E for <invalido>
            Então deve apresentar a <mensagem> "Informe um e-mail válido."

            Exemplos:
            | e-mail                      | invalido | mensagem |
            | "fulano@ebacshop,com"       | "Sim"    | "Sim"    |
            | "fulano@ebacshop.com"       | "Não"    | "Não"    |
            | "fulano@ebacshop.com."      | "Sim"    | "Sim"    |
            | ".fulano@ebacshop.com"      | "Sim"    | "Sim"    |
            | "Maria@ebacshop.com"        | "Não"    | "Não"    |
            | "Maria..Silva@ebacshop.com" | "Sim"    | "Sim"    |
