<!DOCTYPE html>
<html >
  <head>
    <meta charset="UTF-8">
    <title>Responsive Checkout</title>
    <script src="http://s.codepen.io/assets/libs/modernizr.js" type="text/javascript"></script>

<meta name="viewport" content="width=device-width">
    
    <link rel="stylesheet" href="./css/reset.css">

    
        <link rel="stylesheet" href="./css/style_checkout.css">
        
  </head>

  <body>

    <div class="wrap">
  <div class="header cf">
    <div class="gov">
      <h1> Checkout </h1>
    </div>
  </div>
  <div class="gov"> 
<!--  Checkout Flow    -->
  <!--<div class="flows">
    <ul>
      <li class="co_shipping active">Shipping</li>
      <li class="co_billing">Billing</li><li class="co_preview">Preview</li>
      <li class="co_thanks">Thank You</li>
    </ul>
    </div>-->

  <div class="forms cf">
     <form role="form" action="cart" method="post">
                                      
     <input type="hidden" name="action" value="completeOrder">
     <input type="hidden" name="total" value="${invoice.invoiceTotal}">
       
    <h3 class="sectionHead cf"><span>1</span>Shipping Information <a href="#shippingInfo" class="edit">Edit</a></h3>
    <ul id="shippingInfo" class="shippingInfo cf">
      <li><label for="text" class="active">First Name</label>
        <input type="text"  name="shippingFirstName" value="${completeOrder.ShippingFirstName}" required/></li>
      <li><label for="text">Last Name</label>
        <input type="text"  name="shippingLastName" value="${completeOrder.ShippingLastName}" required/>
      </li>

      <li><label for="Company">Company <span>(optional)</span></label>
        <input class="optional" name="shippingCompany" value="${completeOrder.ShippingCompany}" type="text" />
      </li>
      <li><label for="country">Country</label>
        <input type="text" name="shippingCountry" value="${completeOrder.ShippingCountry}" required/>
      </li>
      <li><label for="text">Address Line 1</label>
        <input type="text" name="shippingAddress1" value="${completeOrder.ShippingAddress1}" required/>
      </li>
      <li><label for="Address Line 2">Address Line 2</label>
        <input type="text" name="shippingAddress2" value="${completeOrder.ShippingAddress2}" />
      </li>
      <li><label for="City"> City</label>
        <input type="text" name="shippingCity" value="${completeOrder.ShippingCity}" required/>
      </li>
      <li><label for="State">State</label>
        <input type="text" name="shippingState" value="${completeOrder.ShippingState}" required/>
      </li>
       <li><label for="Zip Code">Zip Code</label>
         <input type="text" name="shippingZip" value="${completeOrder.ShippingZip}" required/>
      </li>
       <li><label for="Phone Number">Phone Number<span class="example">XXX-XXX-XXXX</span></label>
         <input type="text" name="shippingPhone" value="${completeOrder.ShippingPhone}" required/>
      </li>

      <li> 
         <!--<input type="submit" value="Continue" class="btn" data-id="billingInfo"/>-->
         <button type="button"  class="btn" data-id="billingInfo"> Continue</button>
      </li>
    </ul>
        
<!-- Billing Info -->
     <h3 class="sectionHead"><span>2</span>Billing Information <a href="#billingInfo" class="edit">Edit</a></h3>
   
   
    <ul id="billingInfo" class="billingInfo cf">
      <li><label for="first Name" class="active">First Name</label>
        <input type="text" name="billingFirstName" value="${completeOrder.BillingFirstName}" /></li>
      <li><label for="Last Name">Last Name</label>
        <input type="text" name="billingLastName" value="${completeOrder.BillingLastName}" />
      </li>
      <li><label for="Company">Company <span>(optional)</span></label>
        <input class="optional" type="text" name="billingCompany" value="${completeOrder.BillingCompany}" />
      </li>
      <li><label for="country">Country</label>
        <input type="text" name="billingCountry" value="${completeOrder.BillingCountry}" />
      </li>
      <li><label for="Address Line 1">Address Line 1</label>
        <input type="text" name="billingAddress1" value="${completeOrder.BillingAddress1}" />
      </li>
      <li><label for="Address Line 2">Address Line 2</label>
        <input type="text" name="billingAddress2" value="${completeOrder.BillingAddress2}" />
      </li>
      <li><label for="City"> City</label>
        <input type="text"name="billingCity" value="${completeOrder.BillingCity}" />
      </li>
      <li><label for="State">State</label>
        <input type="text" name="billingState" value="${completeOrder.BillingState}" />
      </li>
       <li><label for="Zip Code">Zip Code</label>
         <input type="text" name="billingZip" value="${completeOrder.BillingZip}" />
      </li>
       <li><label for="Phone Number">Phone Number<span class="example">XXX-XXX-XXXX</span></label>
         <input type="text" name="billingPhone" value="${completeOrder.PHONE}" />
      </li>
      <li> 
         <!--<input type="submit" value="Continue" class="btn" data-id="billing"/>-->
         <button type="button"  class="btn" data-id="billing"> Continue</button>
     
      </li>
    </ul>

<h3 class="sectionHead"><span>3</span>Payment<a href=?#payment? class="edit">Edit</a></h3>

<ul id="billing" class="billing">
      <li><label for=?CName? class="active">Name on Card </label>
        <input type="text" /></li>
      <li><label for=?CNumber?>Card Number</label>
        <input type="text" />
      </li>
     
<li><label for=?CSV?>CSV</label>
        <input type="text" /> 

  <li> <label for=?Cexp?>Valid thru</label> <select>  <option value="01" selected>01</option>
      <option value="02">02</option>
      <option value="03">03</option>
      <option value="04">04</option>
      <option value="05">05</option>
      <option value="06">06</option>
      <option value="07">07</option>
      <option value="08">08</option>
      <option value="09">09</option>
      <option value="10">10</option>
      <option value="11">11</option>
      <option value="12">12</option>
    </select>
    <select>
      <option value="2015" selected>2015</option>
      <option value="2016">2016</option>
      <option value="2017">2017</option>
      <option value="2018">2018</option>
      <option value="2019">2019</option>
      <option value="2020">2020</option>
    </select>  </li>
      
<li> <li> 

    
<br>
<br>
         <input type="submit" value="Submit" > </>
      </li>
    </ul>

 </form>    
  </div>



  <div class="receipt"><h2>Receipt</h2>
     <ul class="cartWrap cf ">
      <li class="items odd cf">
        
    <div class="infoWrap"> 
        <div class="cartSection">
       <!-- <img src="http://lorempixel.com/output/technics-q-c-300-300-4.jpg" alt="" class="itemImg" />-->
         
          
           <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
            <c:forEach var="item" items="${invoice.lineItems}">
            
                
                <h3>Item: ${item.product.name}</h3>
                <p class="stockStatus"> In Stock</p>
                <p>${item.quantity}</p>
                <br>
                <p>${item.totalCurrencyFormat}</p>
                <br>
                
             </c:forEach>

                <br>
          
          <br>
          <p>Tax (5%)</p>
          <br>
          <p>Shipping:$ 15.00</p>
        </div>
      
     
      </div>
      </li>
    </ul>
    
    
    <ul class="subtotal cf">
       
            <li class="totalRow final"><span class="label">Total</span><span class="value">${invoice.invoiceTotalCurrencyFormat}</span></li>
      
    </ul>
 
    
     <div class="promoCode cf"><label for="promo">Have A Promo Code?</label><input type="text" name="promo" placholder="Enter Code" />
  <a href="#" class="btn">></a></div>
    </div>
  
</div>
  </div>

<div class="popup">
	<h1>Thanks for your order!</h1>
<br>
<br>

<h2> Your order has been placed and is being processed. When the item(s) are shipped, you will receive an email with the details. <h2>

<br>

	<h3> Best, </h3>
	<h3> Janina & Ana </h3>

<br>
<br>

<button type="submit" onclick="location.href='index.jsp'">Close </button>

</div>
        
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>


    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

        <script src="./js/index_checkout.js"></script>

    
    
    
  </body>
</html>

