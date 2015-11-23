<%-- 
    Document   : deleteProduct
    Created on : Oct 28, 2015, 9:13:09 PM
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
        <h1>Are you sure you want to delete this product?</h1>
        <table border="0">
            <tr>
        <th scope="row">Code</th>
        <td>${product.code}</td>

    </tr>
    <tr>
        <th scope="row">Description</th>
        <td>${product.description}</td>
    </tr>
    <tr>
        <th scope="row">Price</th>
        <td>${product.price}</td>
    </tr>
        </table>
    <form action="product_maintenance" method="post">
    <input type="hidden" name="action" value="deleteProduct">
    <input type="hidden" name="code" value="${product.code}">
    <input type="submit" value="Yes">
</form>
    <form action="product_maintenance" method="post">
    <input type="hidden" name="action" value="displayProducts">
    <input type="submit" value="No">
</form>
    </body>
</html>
