<%-- 
    Document   : editProducts
    Created on : Oct 28, 2015, 8:42:01 PM
    Author     : janina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Product Maintenance</title>
    </head>
    <body>
        <h1>Edit Product</h1>
        <form action="product_maintenance" method="post">
        <input type="hidden" name="action" value="editProduct">        
        <label class="pad_top">Code:</label>
        <input type="text" name="code" value="${product.code}" 
               required><br>
        <label class="pad_top">Description:</label>
        <input type="text" name="description"  value="${product.description}" 
               required><br>
        <label class="pad_top">Price:</label>
        <input type="text" name="price" value="${product.price}"  
               required><br>        
        <label>&nbsp;</label>
        <input type="submit" value="Update Product" class="margin_left">
    </form>
    </body>
</html>
