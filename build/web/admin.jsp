<%-- 
    Document   : admin
    Created on : Nov 27, 2017, 6:56:08 PM
    Author     : chris
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="beautifier_admin.css">

        <title>JSP Page</title>
    </head>
    
  <jsp:include page="header.jsp" />  
  
      <jsp:include page="user-navigation.jsp" />  

      <jsp:include page="site-navigation.jsp" />  
      
    <h2>Administrator Menu</h2>
    <p align="center">
        <button><a href="AdminController.java?action=viewOrders">Display All Orders</a></button>
    </p>
    <jsp:include page="footer.jsp" /> 
</html>
