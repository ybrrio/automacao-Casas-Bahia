

export const ProductPage = {
    visit(url) {
      cy.visit(url);
    },
    clickBuyButton() {
      cy.get('#buy-button').click();
    },
  };
  
  export const CartPage = {
    verifyPage() {
      cy.url().should('include', '/cart');
    },
    clickContinuePurchaseButton() {
      cy.get('[data-qa="cart-finish-buy"]').click();
    },
  };
  
  export const CheckoutPage = {
    verifyPage() {
      cy.contains('Identificação').should('be.visible');
    },
  };
  