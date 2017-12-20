<%-- 
    Document   : items
    Created on : Sep 27, 2017, 5:55:47 PM
    Author     : chris
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Forever Quick</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="beautifier_items.css">
    </head>
    <body>
        
      <jsp:include page="header.jsp"/>  
  
      <jsp:include page="user-navigation.jsp"/>  

      <jsp:include page="site-navigation.jsp"/> 
      
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
      
      <c:forEach var="product" items="${sessionScope.product}"> 
        <div id="main_content">
            <p><b>${product.productName}</b> - ${product.price}</p>
        <img id="sell_item" src=${product.imageURL} alt="iphoneX">
            
            <br>
            <button onclick="location.href='cart.jsp'">Add To Cart</button>
            <button onclick="location.href='catalog.jsp'">Back</button>
            <p>${product.description}</p>
                  
        </div>
            </c:forEach>
        <jsp:include page="footer.jsp"/>
    </body>
</html>

