<%-- 
    Document   : order
    Created on : Oct 5, 2017, 6:36:03 PM
    Author     : chris
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Forever Quick</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="beautifier_order.css">
    </head>
  <jsp:include page="header.jsp" />  
  
      <jsp:include page="user-navigation.jsp" />  

      <jsp:include page="site-navigation.jsp" />  

      <h2>Invoice</h2>
    
      <p>Date: Nov. 10, 2016</p>
      <p><u>Ship To/Bill To:</u></p>
      <p>David Dan</p>
      <p>1001 FindMe Drive</p>
      <p>Charlotte, NC 28224</p>
      
      
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
                    <td>1</td>
                    <td>$999.99</td>
                </tr>
             
                <tr>
                    <td>Apple Watch series 3</td>
                    <td>$1399.99</td>
                    <td>1</td>
                    <td>$1399.99</td>
                </tr>
            </table>
        
     
      
        <button id="back_to_cart" type="button" onclick="window.location.href='cart.jsp'"> Back To Cart </button>
        <button id="purchase" type="button" onclick="window.location.href='payment.jsp'">Purchase</button>
        
     <jsp:include page="footer.jsp" /> 
</html>
