<%-- 
    Document   : payment
    Created on : Nov 27, 2017, 4:07:55 PM
    Author     : chris
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Forever Quick</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="beautifier_payment.css">
    </head>
  <jsp:include page="header.jsp" />  
  
      <jsp:include page="user-navigation.jsp" />  

      <jsp:include page="site-navigation.jsp" />  
      
      <h2>Enter your payment information</h2>
      
      <table>
          <tr>
          <th>Credit Card Type</th>
          <td><select><option>visa</option><option>Master Card</option><option>American Express</option></select></td>
          </tr>
          <th>Card Number</th>
          <td><input type="text" placeholder="1234 5678 9101 1112" length="16"></td>
          <tr>
          <th>Expiration Date (MM/YYYY)</th>
          <td><select><option>Jan</option><option>Feb</option><option>Mar</option><option>Apr</option><option>May</option><option>Jun</option><option>Jul</option><option>Aug</option><option>Sep</option><option>Oct</option><option>Nov</option><option>Dec</option></select></td>
          <td><select><option>2017</option><option>2018</option><option>2019</option><option>2020</option><option>2021</option><option>2022</option><option>2023</option><option>2024</option><option>2025</option></select></td>
          </tr>
          <tr>
          <th>CVV (3-Digit)</th>
          <td><input type="text" length="3"></td>
          </tr>
      </table>
      <p id="text_align">Your card will be charged a total of: $(Money to come  )</p>
      <p align="center">
          <button><a href="OrderController.java?action=confirmOrder">Confirm Payment</a></button>
      </p>
      
     <jsp:include page="footer.jsp" /> 
</html>
