<!DOCTYPE html>
<html lang="it">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Macondo&family=Special+Elite&display=swap" rel="stylesheet">
    <script
      src="https://kit.fontawesome.com/462fa9c33e.js"
      crossorigin="anonymous">
    </script>
    <style><%@include file="/Css/contact.css"%></style>
    <link rel="stylesheet"
    media="only screen and (max-width:768px)"
    href="<%=request.getContextPath() %>/Css/contact.mobile.css">
    <title> Message </title>
  </head>
  <body>	
    <header>
      <h2 class="logo"><span>Re</span>_lease</h2>
      <nav class="navigation">
        <a href="<%= request.getContextPath() + "/register"%>" >Register</a>
        <a href="<%= request.getContextPath() + "/login"%>" >Login</a>
      </nav>
    </header> 
    <div class="message">  
   		 <%
			String s = (String) request.getAttribute("MESSAGE");
			String msg = s != null? s : "";
		 %>
     	 <p><%=msg%></p>
    </div>
    <footer>
      <p>Copyright &COPY; 2023</p>
    </footer>
  </body>
</html>
