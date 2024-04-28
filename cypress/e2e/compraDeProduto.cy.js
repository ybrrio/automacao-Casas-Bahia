// compra.spec.js

// Importar as funções de compra de produto
import { ProductPage, CartPage, CheckoutPage } from '../fixtures/compraDeProduto';

describe('Realizar compra no site das Casas Bahia', () => {
  it('Deve realizar compra', () => {
    // Abrir a página do produto
    ProductPage.visit('https://www.casasbahia.com.br/manga-naruto-gold-vol-1/p/1563571190');

    // Clicar no botão comprar
    ProductPage.clickBuyButton();

    // Verificar se foi redirecionado para a página do carrinho
    CartPage.verifyPage();

    // Clicar no botão Continuar compra
    CartPage.clickContinuePurchaseButton();

    // Verificar se foi redirecionado para a página de identificação
    CheckoutPage.verifyPage();
  });
});
