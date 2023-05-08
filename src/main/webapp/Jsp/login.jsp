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
    <style><%@include file="/Css/login.css"%></style>
    <link rel="stylesheet"
    media=" only screen and (min-width: 769px) and (max-width:1024px)"
    href="<%=request.getContextPath() %>/Css/login.mobile.css">
    <link rel="stylesheet"
    media="only screen and (max-width:768px)"
    href="<%=request.getContextPath() %>/Css/login.mobile.css">
    <title>Homepage | Login </title>
  </head>
  <body>
   <header>
     <h2 class="logo"><span>Re</span>_lease</h2>
     <nav class="navigation">
       <a href="#">About us</a>
       <a href="<%= request.getContextPath() + "/contact"%>" >Contact</a>
     </nav>
   </header>
   
   <div class="main-content">
     <div class="concept-text">
       <h3 >
         Love, passion, sharing, mutual aid and empathy.
         Together we can change the rules! <br>
         <span><br> Welcome!</span> 
       </h3>
     </div>
     <div class="wrapper">
       <h2>Login</h2>
       <div class="form-box login">
         <p class="login-alert"><c:out value="${MESSAGE}"></c:out></p>
         <form action="<%= request.getContextPath() + "/login"%>" method="post">
           <div class="input-box">
             <input id="email" type="email" name="e" pattern="^[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" 
             title="Non puo contenere maiuscole e deve avere una almeno una @" 
             <c:if test="${e!=null}">value="${e}"</c:if> required>
             <label for="email"><span class="icon"><i class="fa-solid fa-envelope"></i></span> Email</label>
           </div>
           <div class="input-box">
             <input id="password" type="password" name="p"  <c:if test="${p!=null}">value="${p}"</c:if> required>
             <label for="password"><span class="icon"><i class="fa-solid fa-lock"></i></span> Password</label>
           </div>
           <div class="remember-forgot"> 
             <label for="check"><input type="checkbox" id="rememberMe"  name="rememberMe" >Remember me</label>
             <a href="#">Forgot Password?</a>
           </div>
           <button class="btn" type="submit">Login</button>
           <div class="login-register">
             <p>Don't you have an account?
               <a href="<%= request.getContextPath() + "/register"%>" class="register-link">Register</a>
             </p>
           </div>
         </form>
       </div>
     </div>
   </div>
   
   <footer>
     <p>Copyright &COPY; 2023</p>
   </footer> 
   
   <script type="text/javascript"></script>    
 </body>
</html>
