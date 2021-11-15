            #language: pt

            Funcionalidade:Configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Cenário: Obrigatoriedade de tamanho, cor e quantidade
            Dado que eu não informe o tamanho, cor e quantidade
            Quando clicar em Comprar
            Então deve apresentar a mensagem "Informe o tamanho, cor e quantidade desejados."

            Cenário: Quantidade de produtos por venda
            Dado que eu tenha adicionado 10 produtos ao carrinho
            Quando adicionar o 11º
            Então deve apresentar a mensagem "Não é possível adicionar mais de 10 produtos ao carrinho."

            Cenário: Botão Limpar
            Dado que eu informado tamanho, cor e/ou quantidade para o produto
            Quando clicar no botão Limpar
            Então deve voltar ao estado original (sem a seleção de tamanho, cor e/ou quantidade)

            Esquema do Cenário: Limite de quantidade de produtos por venda
            Quando eu adicionar a <quantidade> de produtos ao carrinho
            E a quantiadade for <maior que 10>
            Então deve apresentar a <mensagem> "Não é possível adicionar mais de 10 produtos ao carrinho."

            Exemplos:
            | quantidade | maior que 10 | mensagem |
            | "1"        | "Não"        | "Não"    |
            | "3"        | "Não"        | "Não"    |
            | "5"        | "Não"        | "Não"    |
            | "8"        | "Não"        | "Não"    |
            | "11"       | "Sim"        | "Sim"    |
            | "15"       | "Sim"        | "Sim"    |
            | "19"       | "Sim"        | "Sim"    |


