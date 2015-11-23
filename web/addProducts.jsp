<%@ taglib prefix="mma" uri="/WEB-INF/tlds/murach" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Product Maintenance</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
</head>
<body>
    <h1>Product</h1>
    <p><i>${message}</i></p>
    <p><mma:ifEmptyMark field=""/> marks required fields</p>
    
        <form action="product_maintenance" method="post">
        <input type="hidden" name="action" value="insertProduct"> 
        <table>
            <tr>
                <td><label class="pad_top">Code:</label></td>
                <td><input type="text" name="code" value="${product.code}"> 
        <mma:ifEmptyMark field="${product.code}"/><br></td>
            </tr>
            <tr>
                <td><label class="pad_top">Description:</label></td>
                <td><input type="text" name="description" value="${product.description}">
        <mma:ifEmptyMark field="${product.description}"/><br>
        </td>
            </tr>
            <tr>
                <td><label class="pad_top">Price:</label></td>
                <td><input type="text" name="price" value="${product.price}">
        <mma:ifEmptyMark field="${product.price}"/><br> </td>
            </tr> 
        </table>
        <!--<label>&nbsp;</label>-->        
        <input type="submit" value="Update Product" class="margin_left">       
    </form>
    <form action="product_maintenance" method="post">
        <input type="hidden" name="action" value="displayProducts">
        <input type="submit" value="View Products">
    </form>
    
        
               
</html>