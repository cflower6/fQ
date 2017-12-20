<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Forever Quick</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="beautifier_login.css">
    </head>
    <body>
        
      <jsp:include page="header.jsp" />  
  
      <jsp:include page="user-navigation.jsp" />  

      <jsp:include page="site-navigation.jsp" />
      
      <form action="memberList" method="post">
          <input type="hidden" name="action" value="add">
          <label>Username: </label>
          <input type="text" name="username" value="${user.email}" required><br>
          <label>Password: </label>
          <input type="password" name="password" required><br>
          <input type="submit" value="Login">
        </form>
          <p><a href="register.jsp?action=join">Not a member? Register</a></p>
      
        <jsp:include page="footer.jsp" />  