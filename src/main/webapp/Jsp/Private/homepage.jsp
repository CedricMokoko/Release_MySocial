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
    <style><%@include file="/Css/homepage.css"%></style>
    <link rel="stylesheet"
    media=" only screen and (min-width: 769px) and (max-width:1024px)"
    href="<%=request.getContextPath() %>/Css/homepage.mobile.css">
    <link rel="stylesheet"
    media="only screen and (max-width:768px)"
    href="<%=request.getContextPath() %>/Css/homepage.mobile.css">
    <title> HOMEPAGE | FEED</title>
  </head>
  <body>
 
   <!-- Mobile Navbar -->
 
    <nav class="mobile-nav ">
      <header>
        <div class="logo">
          <p><span>Re</span>_lease</p>
        </div>
      </header>
      <div class="menu-bar">
        <div class="menu">
          <li class="search-box2">
            <i class="fa-solid fa-magnifying-glass icon"></i>
            <input type="text" placeholder=" search...">
          </li>
        </div>
      </div>
    </nav>
 
   <!-- Laptop Sidebar -->
 
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
              <a href="<%= request.getContextPath() + "/areaUtente"%>">
                <i class="fa-solid fa-circle-user icon"></i>
                <span class="text nav-text">Profil</span>
              </a>
            </li>
            <li class="nav-link">
              <a href="<%= request.getContextPath() + "/homepage"%>">
                <i class="fa-solid fa-house icon"></i>
                <span class="text nav-text">Home</span>
              </a>
            </li>
            <!-- <li class="nav-link">
              <a href="#">
                <i class="fa-regular fa-heart icon"></i>
                <span class="text nav-text">Notications</span>
              </a>
            </li> -->
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
 
   <!-- Main -->

     <section class="home">
      <div class="home-main">
        <div class="card">
          <div class="top">
            <div class="userDetails">   
              <a href="#"><div class="coverPost" ></div></a>
              <!-- <a href="#"><img class="coverPost" src="/img/elena-mozhvilo-IYiwhXj_lRA-unsplash.jpg" alt=""></a> -->
              <h5><a href="#">Alpha</a><br><span>Libreville, Gabon</span></h5><br>
            </div>
            <div>
              <i class="fa-solid fa-ellipsis-vertical fa-rotate-90 dot"></i>        
            </div>
          </div>
          <div class="imgEx">
            <a href="#"><div class="post-imgEx" ></div></a>
            <!-- <img class="post-imgEx" src="/img/elena-mozhvilo-IYiwhXj_lRA-unsplash.jpg" alt=""> -->
          </div>
          <div class="action"> 
            <i class="fa-regular fa-heart heart" id="blu" onclick="likeButton()" ></i>
            <a href=""><i class="fa-regular fa-comment icon"></i></a>               
          </div>
          <h4 class="likes">2 likes</h4>
          <h4 class="message">
            <a href=""><b>Alpha</b></a> Tutto quello che vuole, lo compra a spese dell'anima. <br> 
            <span>#love</span>
            <span>#passion</span>
            <span>#release</span>
          </h4>
          <a href="" class="comments">View all 2 comments</a>
          <div class="addcomments">
            <a href="#"><div class="ImgComment" ></div></a>
            <!-- <img class="ImgComment" src="/img/PhotoCedric.jpg" alt=""> -->
            <a href="" class="linkComment">Add a comment...</a>
          </div>
          <h5 class="postTime">2 hours ago</h5>
        </div>
      </div>
   
    
      <!-- Laptop Right Navbar -->

      <div class="right-nav">
        <div class="profil-content">
          <a href="<%= request.getContextPath() + "/areaUtente"%>" ><div class="ImgRight" ></div></a>
          <!-- <a href="areaUtente.html"><img src="/img/PhotoCedric.jpg" alt=""></a> -->
          <div class="dati">
            <a href="<%= request.getContextPath() + "/areaUtente"%>"><p>${utente.username}</p></a> 
          </div>
        </div>
        <div class="users-content">
          <div class="suggerimenti">
            <h5>Others users</h5>
            <a href=""><h5>All users</h5></a>
          </div> 
          <div class="users">
            <a href="#"><div class="user-img" ></div></a>
            <!-- <a href=""><img class="user-img" src="/img/elena-mozhvilo-IYiwhXj_lRA-unsplash.jpg" alt=""></a> -->
            <a href="">
              <p class="username">Darane Mikala</p>
            </a>
          </div> 
          <div class="users">
            <a href="#"><div class="user-img" ></div></a>
            <!-- <a href=""><img class="user-img" src="/img/elena-mozhvilo-IYiwhXj_lRA-unsplash.jpg" alt=""></a> -->
            <a href="" >
              <p class="username">Daiana Lanzarone</p>
            </a>
          </div>
          <div class="users">
            <a href="#"><div class="user-img" ></div></a>
            <!-- <a href=""><img class="user-img" src="/img/elena-mozhvilo-IYiwhXj_lRA-unsplash.jpg" alt=""></a> -->
            <a href="">
              <p class="username">Ellen Maregrande</p>
            </a>
          </div>
          <div class="users">
            <a href="#"><div class="user-img" ></div></a>
            <!-- <a href=""><img class="user-img" src="/img/elena-mozhvilo-IYiwhXj_lRA-unsplash.jpg" alt=""></a> -->
            <a href="">
              <p class="username">Luce Mokoko</p>
            </a>
          </div>
          <div class="users">
            <a href="#"><div class="user-img" ></div></a>
            <!-- <a href=""><img class="user-img" src="/img/elena-mozhvilo-IYiwhXj_lRA-unsplash.jpg" alt=""></a> -->
            <a href="">
              <p class="username">Steeve Mokoko</p>
            </a>
          </div> 
        </div>
        <footer>
          <div class="footer-links">
            <a href="">Informations</a><i class="fa-solid fa-circle"></i>
            <a href="">Privacy</a><i class="fa-solid fa-circle"></i>
            <a href="">Conditions</a>
          </div>
          <hr>
          <div class="copyright">
            <p> &COPY; 2023 RELEASE</p>
          </div>
        </footer>
     
        <div class="arrow">
          <a href="#"><i class="fa-solid fa-arrow-up fa-bounce"></i></a>
          <p>Torna su</p>
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
                <a href="<%= request.getContextPath() + "/areaUtente"%>" >      
                  <i class="fa-solid fa-circle-user icon"></i>
                </a>
              </li>
              <li class="nav-link">
                <a href="<%= request.getContextPath() + "/homepage"%>" >
                  <i class="fa-solid fa-house icon"></i>
                </a>
              </li>
              <!-- <li class="nav-link">
                <a href="#">
                  <i class="fa-regular fa-heart icon"></i>
                </a>
              </li> -->
              <li class="nav-link">
                <a href="#">
                  <i class="fa-regular fa-square-plus icon"></i>
                </a>
              </li>
            </ul>
          </div>
          <div class="bottom-content">
           <li >
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