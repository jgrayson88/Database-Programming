<%-- 
    Document   : products
    Created on : Oct 28, 2015, 4:40:52 PM
    Author     : janina
--%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Product Maintenance</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
</head>
<body>
    
<h1>Products</h1>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<table>
    <tr>
        <th>Code</th>
        <th>Name</th>
        <th>Description</th>
        <th class="right">Price</th>
        <th>&nbsp;</th>
        <th>&nbsp;</th>
    </tr>
    <c:forEach var="product" items="${products}">
    <tr>
        <td><c:out value='${product.code}'/></td>
        <td>${product.name}</td>
        <td>${product.description}</td>
        <td class="right">${product.priceCurrencyFormat}</td>
        <td>
            <a href="product_maintenance?action=goToEditProduct&amp;productCode=${product.code}">Edit</a>
        </td>
        <td>
            <a href="product_maintenance?action=goToDeleteProduct&amp;productCode=${product.code}">Delete</a>
        </td>
    </tr>
    </c:forEach>
</table>
<form action="product_maintenance" method="post">
    <input type="hidden" name="action" value="goToAddProduct">
    <input type="submit" value="Add Product">
</form>
        
</body>
</html>