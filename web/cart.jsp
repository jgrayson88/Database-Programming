<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
  <head>
    
      <link rel="stylesheet" href="./css/normalize.css">

    
      <link rel="stylesheet" href="./css/style.css" >


    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="./js/index_cart.js"></script>
    
    <meta charset="UTF-8">
    <title>Responsive Shopping Cart</title>
    
    
   <!--<style type="text/css">
/*! normalize.css v3.0.2 | MIT License | git.io/normalize */html{font-family:sans-serif;-ms-text-size-adjust:100%;-webkit-text-size-adjust:100%}body{margin:0}article,aside,details,figcaption,figure,footer,header,hgroup,main,menu,nav,section,summary{display:block}audio,canvas,progress,video{display:inline-block;vertical-align:baseline}audio:not([controls]){display:none;height:0}[hidden],template{display:none}a{background-color:transparent}a:active,a:hover{outline:0}abbr[title]{border-bottom:1px dotted}b,strong{font-weight:bold}dfn{font-style:italic}h1{font-size:2em;margin:0.67em 0}mark{background:#ff0;color:#000}small{font-size:80%}sub,sup{font-size:75%;line-height:0;position:relative;vertical-align:baseline}sup{top:-0.5em}sub{bottom:-0.25em}img{border:0}svg:not(:root){overflow:hidden}figure{margin:1em 40px}hr{-moz-box-sizing:content-box;-webkit-box-sizing:content-box;box-sizing:content-box;height:0}pre{overflow:auto}code,kbd,pre,samp{font-family:monospace, monospace;font-size:1em}button,input,optgroup,select,textarea{color:inherit;font:inherit;margin:0}button{overflow:visible}button,select{text-transform:none}button,html input[type="button"],input[type="reset"],input[type="submit"]{-webkit-appearance:button;cursor:pointer}button[disabled],html input[disabled]{cursor:default}button::-moz-focus-inner,input::-moz-focus-inner{border:0;padding:0}input{line-height:normal}input[type="checkbox"],input[type="radio"]{-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box;padding:0}input[type="number"]::-webkit-inner-spin-button,input[type="number"]::-webkit-outer-spin-button{height:auto}input[type="search"]{-webkit-appearance:textfield;-moz-box-sizing:content-box;-webkit-box-sizing:content-box;box-sizing:content-box}input[type="search"]::-webkit-search-cancel-button,input[type="search"]::-webkit-search-decoration{-webkit-appearance:none}fieldset{border:1px solid #c0c0c0;margin:0 2px;padding:0.35em 0.625em 0.75em}legend{border:0;padding:0}textarea{overflow:auto}optgroup{font-weight:bold}table{border-collapse:collapse;border-spacing:0}td,th{padding:0}
/*
*/
/* Global settings */
/* Global "table" column settings */
.product-image {
  float: left;
  width: 20%;
}
.product-details {
  float: left;
  width: 37%;
}
.product-price {
  float: left;
  width: 12%;
}
.product-quantity {
  float: left;
  width: 10%;
}
.product-removal {
  float: left;
  width: 9%;
}
.product-line-price {
  float: left;
  width: 12%;
  text-align: right;
}
/* This is used as the traditional .clearfix class */
.group:before, .shopping-cart:before, .column-labels:before, .product:before, .totals-item:before,
.group:after,
.shopping-cart:after,
.column-labels:after,
.product:after,
.totals-item:after {
  content: '';
  display: table;
}
.group:after, .shopping-cart:after, .column-labels:after, .product:after, .totals-item:after {
  clear: both;
}
.group, .shopping-cart, .column-labels, .product, .totals-item {
  zoom: 1;
}
/* Apply clearfix in a few places */
/* Apply dollar signs */
.product .product-price:before, .product .product-line-price:before, .totals-value:before {
  content: '$';
}
/* Body/Header stuff */
body {
  padding: 0px 30px 30px 20px;
  font-family: "HelveticaNeue-Light", "Helvetica Neue Light", "Helvetica Neue", Helvetica, Arial, sans-serif;
  font-weight: 100;
}
h1 {
  font-weight: 100;
}
label {
  color: #aaa;
}
.shopping-cart {
  margin-top: -45px;
}
/* Column headers */
.column-labels label {
  padding-bottom: 15px;
  margin-bottom: 15px;
  border-bottom: 1px solid #eee;
}
.column-labels .product-image, .column-labels .product-details, .column-labels .product-removal {
  text-indent: -9999px;
}
/* Product entries */
.product {
  margin-bottom: 20px;
  padding-bottom: 10px;
  border-bottom: 1px solid #eee;
}
.product .product-image {
  text-align: center;
}
.product .product-image img {
  width: 100px;
}
.product .product-details .product-title {
  margin-right: 20px;
  font-family: "HelveticaNeue-Medium", "Helvetica Neue Medium";
}
.product .product-details .product-description {
  margin: 5px 20px 5px 0;
  line-height: 1.4em;
}
.product .product-quantity input {
  width: 40px;
}
.product .remove-product {
  border: 0;
  padding: 4px 8px;
  background-color: rgba(66, 140, 203, 0.48);
  color: #fff;
  font-family: "HelveticaNeue-Medium", "Helvetica Neue Medium";
  font-size: 12px;
  border-radius: 3px;
}
.product .remove-product:hover {
  background-color: #a44;
}
/* Totals section */
.totals .totals-item {
  float: right;
  clear: both;
  width: 100%;
  margin-bottom: 10px;
}
.totals .totals-item label {
  float: left;
  clear: both;
  width: 79%;
  text-align: right;
}
.totals .totals-item .totals-value {
  float: right;
  width: 21%;
  text-align: right;
}
.totals .totals-item-total {
  font-family: "HelveticaNeue-Medium", "Helvetica Neue Medium";
}
.checkout {
  float: right;
  border: 0;
  margin-top: 20px;
  padding: 6px 25px;
  background-color: rgba(66, 140, 203, 0.48);
  color: #fff;
  font-size: 25px;
  border-radius: 3px;
}
.checkout:hover {
  background-color: #a44;
}
/* Make adjustments for tablet */
@media screen and (max-width: 650px) {
  .shopping-cart {
    margin: 0;
    padding-top: 20px;
    border-top: 1px solid #eee;
  }
  .column-labels {
    display: none;
  }
  .product-image {
    float: right;
    width: auto;
  }
  .product-image img {
    margin: 0 0 10px 10px;
  }
  .product-details {
    float: none;
    margin-bottom: 10px;
    width: auto;
  }
  .product-price {
    clear: both;
    width: 70px;
  }
  .product-quantity {
    width: 100px;
  }
  .product-quantity input {
    margin-left: 20px;
  }
  .product-quantity:before {
    content: 'x';
  }
  .product-removal {
    width: auto;
  }
  .product-line-price {
    float: right;
    width: 70px;
  }
}
/* Make more adjustments for phone */
@media screen and (max-width: 350px) {
  .product-removal {
    float: right;
  }
  .product-line-price {
    float: right;
    clear: left;
    width: auto;
    margin-top: 10px;
  }
  .product .product-line-price:before {
    content: 'Item Total: $';
  }
  .totals .totals-item label {
    width: 60%;
  }
  .totals .totals-item .totals-value {
    width: 40%;
  }
}
  </style>  -->
    
    
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
  </div>
    </tr>

  
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:forEach var="item" items="${cart.items}">
    <div class="product">
    <tr>
        <td>
    <div class="product-image">
      <img src="<c:out value='${item.product.cartImageURL}'/>">
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
 
</tr>
</c:forEach>
</table>

<button type="button" onclick="location.href='cart?action=checkout&amp;cart=${cart}'">Checkout</button>
<!--<button type="button" onclick="location.href='checkout/checkout.jsp'">Checkout </button>-->

     <button type="button" onclick="location.href='index.jsp'"> Continue Shopping</button>


</div>
    

    
    
    
  </body>
</html>

