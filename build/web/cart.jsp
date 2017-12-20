<%-- 
    Document   : cart
    Created on : Sep 27, 2017, 5:58:07 PM
    Author     : chris
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Forever Quick</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="beautifier_cart.css">
    </head>
    <body>
        <jsp:include page="header.jsp" />  
  
      <jsp:include page="user-navigation.jsp" />  

      <jsp:include page="site-navigation.jsp" /> 
      
        <div id='main_content'>
            <h3 id="title_page">Your Cart</h3>
            <p id="remove_dir">To remove an item, click remove or change the quantity to zero.</p>
            
            <table>
                <tr>
                <th>Item</th>
                <th>Price</th>
                <th>Quantity</th>
                <th>Total</th>
                </tr>
                <tr>
                    <td>Iphone X</td>
                    <td>$999.99</td>
                    <td><form><input type="number" name="quantity" value="1"></form></td>
                    <td>$999.99</td>
                </tr>
             
                <tr>
                    <td>Apple Watch series 3</td>
                    <td>$1399.99</td>
                    <td><form><input type="number" name="quantity" value="1"></form></td>
                    <td>$1399.99</td>
                </tr>
            </table>
        </div>
        <ul id="sub_total">
            <li>Subtotal</li>
            <li>$2399.98</li>
        </ul>
        <button id="update_cart" type="button" onclick="window.location.href='cart.jsp'"> Update Cart </button>
        <button id="checkout_cart" type="button" onclick="window.location.href='payment.jsp'">Checkout</button>
        
        <jsp:include page="footer.jsp"/>
    </body>
</html>

