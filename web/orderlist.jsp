<%-- 
    Document   : orderlist
    Created on : Nov 27, 2017, 5:47:17 PM
    Author     : chris
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Forever Quick</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="beautifier_orderlist.css">
    </head>
  <jsp:include page="header.jsp" />  
  
      <jsp:include page="user-navigation.jsp" />  

      <jsp:include page="site-navigation.jsp" />
      <h2>Orders List</h2>
<table>
  <tr>
    <th>Order Number</th>
    <th>Customer</th>
    <th>Order Date</th>
    <th>Total</th>
  </tr>
  <tr>
      <td><a class="link">12345678</a></td>
    <td>Some Guy</td>
    <td>Sep. 15, 2012</td>
    <td>$314.96</td>
  </tr>
  <tr>
      <td><a class="link">8910111</a></td>
    <td>Some Guy</td>
    <td>Nov. 10, 2012</td>
    <td>$88.94</td>
  </tr>
</table>
      
     <jsp:include page="footer.jsp" /> 
</html>

