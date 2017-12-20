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
      
      
      <p><i>${message}</i></p>
         <form action="AdminController" method="post">
          <input type="hidden" name="action" value="add">
          <label>First Name: </label>
          <input type="text" name="FirstName" value="firstname" required><br>
          <label>Last Name: </label>
          <input type="text" name="LastName" value="lastname" required><br>
          <label>Email:</label>
          <input type="email" name="Email" value="email" required><br>
          <label>Address: </label>
          <input type="text" name="Address" value="address" required><br>
          <label>City: </label>
           <input type="text" name="City" value="city" required><br>
          <label>State</label>
           <input type="text" name="State" value="state" required><br>
          <label>Zip Code: </label>
           <input type="text" name="ZipCode" value="zipcode" required><br>
          <label>Country: </label>
           <input type="text" name="Country" value="country" required><br>
           <label>Username: </label>
          <input type="text" name="username" value="${user.email}" required><br>
          <label>Password: </label>
          <input type="password" name="password" required><br>
          <input type="submit" value="Login">
        </form>
      
        <jsp:include page="footer.jsp" />  
    </body>
</html>
