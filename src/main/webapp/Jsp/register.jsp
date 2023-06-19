<!DOCTYPE html>
<html lang="it">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Macondo&family=Special+Elite&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/462fa9c33e.js" crossorigin="anonymous"></script>
	<style><%@include file="/Css/register.css"%></style>
	<link rel="stylesheet"
	media=" only screen and (min-width:993px) and (max-width:1200px)"
	href="<%=request.getContextPath() %>//Css/register.mobile.css">
    <link rel="stylesheet"
	media=" only screen and (min-width:769px) and (max-width:992px)"
	href="<%=request.getContextPath() %>//Css/register.mobile.css">
	<link rel="stylesheet"
	media=" only screen and (min-width:577px) and (max-width:768px)"
	href="<%=request.getContextPath() %>//Css/register.mobile.css">
	<link rel="stylesheet"
	media="only screen and (max-width:576px)"
	href="<%=request.getContextPath() %>//Css/register.mobile.css">
	    
   <title>Homepage | Register </title>
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
       <h2>Registration</h2>
       <div class="form-box register">
         <p class="register-alert"><c:out value="${MESSAGE}"></c:out></p>
         <form action="<%= request.getContextPath() + "/register"%>" method="post">
           <div class="input-box">
             <input id="username" type="text" name="u" title="Solo caratteri alfanumerici minuscoli e trattini bassi, con lunghezza minima 3 e massima 16" 
             pattern="^[a-z0-9_]{3,16}$" <c:if test="${u!=null}">value="${u}"</c:if> required>
             <label for="username"><span class="icon"><i class="fa-solid fa-user"></i></span> Username</label>
           </div>
           <div class="input-box">
             <input id="email" type="email" name="e"
             pattern="^[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" title="Non puo contenere maiuscole e deve avere una almeno una @" 
             <c:if test="${e!=null}">value="${e}"</c:if> required>
             <label for="email"><span class="icon"><i class="fa-solid fa-envelope"></i></span> Email</label>
           </div>
           <div class="input-box">
             <input id="password" type="password" name="p" <c:if test="${p!=null}">value="${p}"</c:if> required>
             <label for="password"><span class="icon"><i class="fa-solid fa-lock"></i></span> Password</label>
           </div>
           <div class="input-box">
             <input id="password" type="password" name="cp" <c:if test="${cp!=null && cp==p}">value="${p}"</c:if> required>
             <label for="password"><span class="icon"><i class="fa-solid fa-lock"></i></span> Confirm Password</label>
           </div>
           <div class="terms">
             <label for="check"><input type="checkbox" id="check" required> I agree to the terms & conditions</label>
           </div>
           <button class="btn" type="submit">Register</button>
           <div class="login-register">
             <p>Already have an account?
               <a href="<%= request.getContextPath() + "/login"%>"  class="login-link">Login</a>
             </p>
           </div>
         </form>
       </div>
     </div>
   </div>
   
   <footer>
     <p>Copyright &COPY; 2023</p>
   </footer>  
   <script><%@include file = "/Js/register.js"%></script>
 </body>
</html>
