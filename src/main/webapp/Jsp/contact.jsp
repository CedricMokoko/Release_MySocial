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
    <title> CONTACT | FORM </title>
  </head>
  <body>
    <header>
      <h2 class="logo"><span>Re</span>_lease</h2>
      <nav class="navigation">
        <a href="<%= request.getContextPath() + "/register"%>" >Register</a>
        <a href="<%= request.getContextPath() + "/login"%>" >Login</a>
      </nav>
    </header>
    
    <div class="main-content">
      <div class="wrapper">
        <div class="form-box contact">
          <h2>Contact us</h2>
          <form action="<%= request.getContextPath() + "/contact"%>" method="post">
            <div class="input-box">
              <input id="email" type="email" name="e" pattern="^[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" 
              title="Non puo contenere maiuscole e deve avere una @" required>
              <label for="email"><span class="icon"><i class="fa-solid fa-envelope"></i></span> Email</label>
            </div>
            <div class="input-box">
              <textarea name="message" required placeholder="your message..."></textarea>
            </div>
            <button class="btn" type="submit">Submit</button>
          </form>
        </div> 
      </div>
    </div>

    <footer>
      <p>Copyright &COPY; 2023</p>
    </footer>
  </body>
</html>
