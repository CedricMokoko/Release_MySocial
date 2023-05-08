<!DOCTYPE html>
<html lang="it">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script
      src="https://kit.fontawesome.com/462fa9c33e.js"
      crossorigin="anonymous">
    </script>
     <style><%@include file="/Css/areaUtente.css"%></style>
    <link rel="stylesheet"
    media=" only screen and (min-width: 769px) and (max-width:1024px)"
    href="<%=request.getContextPath() %>//Css/areaUtente.mobile.css">
    <link rel="stylesheet"
    media="only screen and (max-width:768px)"
    href="<%=request.getContextPath() %>//Css/areaUtente.mobile.css">
  <title> AREA UTENTE</title>
  </head>
  <body> 

    <nav class="sidebar close">
      <header>
        <div class="logo close">
          <p><span>Re</span>_lease</p>
        </div>
        <i class="fa-solid fa-chevron-right toggle icon"></i>
      </header>
      <div class="menu-bar">
        <div class="menu">
          <ul class="menu-links">
            <li class="nav-link">
              <a href="<%= request.getContextPath() + "/homepage"%>" >
                <i class="fa-solid fa-house icon"></i>
                <span class="text nav-text">Home</span>
              </a>
            </li>
            <li class="nav-link">
              <a href="#">
                <i class="fa-regular fa-square-plus icon"></i>
                <span class="text nav-text">Crea</span>
              </a>
            </li>
          </ul>
          <li class="search-box">
            <i class="fa-solid fa-magnifying-glass icon"></i>
            <input type="text" placeholder=" search...">
          </li>
        </div>
        <div class="bottom-content">
          <li class="">
            <a href="<%= request.getContextPath()+ "/logout"%>">
              <i class="fa-sharp fa-solid fa-arrow-right-to-bracket fa-rotate-180 icon"></i>
              <span class="text nav-text">Logout</span>
            </a>
          </li>
          <li class="mode">
            <div class="moon-sun">
              <i class="fa-regular fa-moon fa-beat-fade icon moon"></i>
              <i class="fa-regular fa-sun fa-spin icon sun"></i>
            </div>
            <span class="mode-text text">Dark</span>
            <div class="toggle-switch">
              <span class="switch"></span>
            </div>
          </li>
        </div>
      </div>
    </nav>
 
   <section class="home">
      <div class="home-main">
        <div class="head-user">
          <div class="info">
             <div class="" ></div>
             <!-- <img src="/img/PhotoCedric.jpg" alt=""> -->
          </div>
          <div class="content-right">
            <div class="name-modif">
              <h3><c:out value="${utente.username}"></c:out></h3>
              <div class="modifica">
                <button class="btnModifica"><a href="">Modifica profilo</a></button>
              </div>
            </div>
            <div class="number-content">
              <div class="number">
                <h4 class="num">12</h4>
                <h4 class="text">post </h4>
              </div>
              <div class="number">
                <h4 class="num">12 </h4>
                <h4 class="text">followers</h4>
              </div>
              <div class="number">
                <h4 class="num">12 </h4>
                <h4 class="text">seguiti</h4>
              </div>
            </div>
            <h5><c:out value="${utente.username}"></c:out></h5>
          </div>
        </div>
        <hr>

         <div class="card-content">
          <div class="card">
            <div class="post-imgEx" ></div>
            <!-- <img class="post-imgEx" src="/img/elena-mozhvilo-IYiwhXj_lRA-unsplash.jpg" alt=""> -->
          </div>
          <div class="card">
            <div class="post-imgEx" ></div>
            <!-- <img class="post-imgEx" src="/img/elena-mozhvilo-IYiwhXj_lRA-unsplash.jpg" alt=""> -->
          </div>
          <div class="card">
            <div class="post-imgEx" ></div>
            <!-- <img class="post-imgEx" src="/img/elena-mozhvilo-IYiwhXj_lRA-unsplash.jpg" alt=""> -->
          </div>
          <div class="card">
            <div class="post-imgEx" ></div>
            <!-- <img class="post-imgEx" src="/img/elena-mozhvilo-IYiwhXj_lRA-unsplash.jpg" alt=""> -->
          </div>
        </div>
      </div>
    
     <!-- Mobile Footer -->
 
     <nav class="mobile-footer">
       <div class="menu-bar">
         <li class="mode">
           <div class="moon-sun">
             <i class="fa-regular fa-moon fa-beat-fade icon moon"></i>
             <i class="fa-regular fa-sun fa-spin icon sun"></i>
           </div>
           <span class="mode-text text"></span>
           <div class="toggle-switch2">
             <span class="switch"></span>
           </div>
         </li>
         <div class="menu">
           <ul class="menu-links">
             <li class="nav-link">
               <a href="<%= request.getContextPath() + "/homepage"%>" >
                 <i class="fa-solid fa-house icon"></i>
               </a>
             </li>
             <li class="nav-link">
               <a href="#">
                 <i class="fa-regular fa-square-plus icon"></i>
               </a>
             </li>
           </ul>
         </div>
         <div class="bottom-content">
           <li>
             <a href="<%= request.getContextPath()+ "/logout"%>">
               <i class="fa-sharp fa-solid fa-arrow-right-to-bracket fa-rotate-180 icon"></i>
             </a>
           </li>
         </div>
       </div>
     </nav>
   </section>     
 
   <script><%@include file = "/Js/homepage.js"%></script>
 </body>
</html>