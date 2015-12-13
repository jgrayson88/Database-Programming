<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
  <head>
    <meta charset="UTF-8">
    <title>Responsive Shopping Cart</title>
    
    
    <link rel="stylesheet" href="css/normalize.css">

    
    <link rel="stylesheet" href="css/style.css">

    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="js/index.js"></script>
    
    
  </head>

  <body>

    <h1>Shopping Cart</h1>

<div class="shopping-cart">
    <table>
        <tr>
  <div class="column-labels">
      <th><label class="product-image">Image</label></th>
    <th><label class="product-details">Product</label></th>
    <th><label class="product-price">Price</label></th>
    <th><label class="product-quantity">Quantity</label></th>
    <th><label class="product-removal">Remove</label></th>
    <th><label class="product-line-price">Total</label></th>
    <th><label class="product-line-price">Grand Total</label></th>
  </div>
    </tr>

  
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:forEach var="item" items="${cart.items}">
    <div class="product">
    <tr>
        <td>
    <div class="product-image">
      <img src="<c:out value='${item.product.imageURL}'/>">
    </div>
        </td>
        <td>
    <div class="product-details">
      <div class="product-title"><c:out value='${item.product.name}'/></div> 
    </div>
      </td>
      <td>
    <div class="product-price"><c:out value='${item.product.price}'/></div>
      </td>
      <td>
    <div class="product-quantity">
      
      <form action="" method="post">
        <input type="hidden" name="productCode" 
               value="<c:out value='${item.product.code}'/>">
        <input type="number" name="quantity" value="<c:out value='${item.quantity}'/>" min="1" id="quantity">
        <input type="submit" value="Update">
      </form>
    </div>
      </td>
      <td>
    <div class="product-removal">
        <form action="" method="post">
        <input type="hidden" name="productCode" 
               value="<c:out value='${item.product.code}'/>">
        <input type="hidden" name="quantity" 
               value="0">
        <input type="submit" value="Remove">
      </form>
    </div>
      </td>
      <td>
    <div class="product-line-price">${item.totalCurrencyFormat}</div>
      </td>


  </div>

      <td>
  <div class="totals">
    <div class="totals-item">
      <label>Subtotal</label>
      <div class="totals-value" id="cart-subtotal">${item.totalCurrencyFormat}</div>
    </div>
    <div class="totals-item">
      <label>Tax (5%)</label>
      <div class="totals-value" id="cart-tax">3.60</div>
    </div>
    <div class="totals-item">
      <label>Shipping</label>
      <div class="totals-value" id="cart-shipping">15.00</div>
    </div>
    <div class="totals-item totals-item-total">
      <label>Grand Total</label>
      <div class="totals-value" id="cart-total">${item.grandTotalCurrencyFormat}</div>
    </div>
  </div>
      </td>
 
</tr>
</c:forEach>
</table>

     <!--<button type="button" onclick="location.href='cart?action=checkout&amp;grandTotal=${item.grandTotalCurrencyFormat}'">Checkout </button> -->
<button type="button" onclick="location.href='checkout/checkout.jsp'">Checkout </button>

     <button type="button" onclick="location.href='index.jsp'"> Continue Shopping</button>


</div>
    

    
    
    
  </body>
</html>

