Funcionalidade: Compra de produto no site das Casas Bahia

  Contexto: Um usuário logado e um produto disponível para compra
    Dado que estou logado na conta das Casas Bahia
    E tenho um produto disponível no estoque

  Cenário: Compra bem-sucedida de um produto
    Quando eu navego até a página do produto desejado
    E adiciono o produto ao meu carrinho de compras clicando em "comprar"
    E prossigo para o checkout 
    E clico em "continuar compra"
    E sou direcionado para preencher o endereço e escolher o tipo da entrega
    E clico em "Ir para pagamento"
    E escolho uma das opções 
    Exemplos:
    | Carne digital       |
    |Cartão de crédito    |
    |Pix                  |
    |Combinar pagamento   |
    |Cartão Presente      |
    Quando Preencho os dados de acordo com a forma escolhida
    E confirmo a compra no botão "Finalizar compra"
    Então recebo uma confirmação do pedido em tela e via e-mail

  Cenário: Tentativa de compra de um produto sem estoque
    Dado que o produto que desejo comprar está esgotado
    Quando eu navego até a página do produto esgotado
    Então vejo a mensagem informando que o produto está sem estoque
    E tento adicionar o produto ao meu carrinho de compras
    Então o botão "comprar" está desabilitado
    E não consigo prosseguir para o checkout


    
