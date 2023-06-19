<%@ page session="true" %>
<!DOCTYPE html>
<html lang="it">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Macondo&family=Special+Elite&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/462fa9c33e.js" crossorigin="anonymous"></script>
	<style><%@include file="/Css/homepage.css"%></style>
	<link rel="stylesheet"
	media=" only screen and (min-width:993px) and (max-width:1200px)"
	href="<%=request.getContextPath() %>//Css/homepage.mobile.css">
	<link rel="stylesheet"
	media=" only screen and (min-width:769px) and (max-width:992px)"
	href="<%=request.getContextPath() %>//Css/homepage.mobile.css">
	<link rel="stylesheet"
	media=" only screen and (min-width:577px) and (max-width:768px)"
	href="<%=request.getContextPath() %>//Css/homepage.mobile.css">
	<link rel="stylesheet"
	media="only screen and (max-width:576px)"
	href="<%=request.getContextPath() %>//Css/homepage.mobile.css">
    <title> HOMEPAGE | FEED</title>
  </head>
  <body>
  
    <!-- MOBILE NAVBAR -->
    <nav class="mobile-nav ">
      <header>
        <div class="logo">
          <p><span>Re</span>_lease</p>
        </div>
      </header>
      <div class="search-box2">
        <form action="" method="post" id="form-cerca">
          <i id="icon-search-mobile" class="fa-solid fa-magnifying-glass icon " ></i>
          <input type="text" placeholder="Cerca..." class="input-box" id="mobile-search">
          <i class="fa-solid fa-circle-xmark search-mobile-close" id="search-mobile-close"></i>
        </form>
      </div>
      <i class="fa-solid fa-caret-down fa-rotate-180" id="caret-down"></i>
    </nav>

    <!-- MODAL MOBILE SEARCH -->
    <section class="search-modal-mobile">
      <div class="search-result-mobile">
        <div class="user-content">
          <img class="user-img" src="https://images.unsplash.com/photo-1523895665936-7bfe172b757d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGNvbG9yJTIwYmFja2dyb3VuZHN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60" alt="">
          <div class="user-name">
            <h5 class="name1">Mamadou Touré</h5>
            <p class="name2">Mamadou Touré</p>
          </div>
          <div title="Rimuovi" class="single-result-close"><i class="fa-sharp fa-solid fa-xmark"></i></div>
        </div>
        <div class="user-content">
          <img class="user-img" src="https://images.unsplash.com/photo-1523895665936-7bfe172b757d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGNvbG9yJTIwYmFja2dyb3VuZHN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60" alt="">
          <div class="user-name">
            <h5 class="name1">Darane Mikala</h5>
            <p class="name2">Darane Mikala</p>
          </div>
          <div title="Rimuovi" class="single-result-close"><i class="fa-sharp fa-solid fa-xmark"></i></div>
        </div>
        <div class="user-content">
          <img class="user-img" src="https://images.unsplash.com/photo-1523895665936-7bfe172b757d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGNvbG9yJTIwYmFja2dyb3VuZHN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60" alt="">
          <div class="user-name">
            <h5 class="name1">Ginevra Ducceschi</h5>
            <p class="name2">Ginevra Ducceschi</p>
          </div>
          <div title="Rimuovi" class="single-result-close"><i class="fa-sharp fa-solid fa-xmark"></i></div>
        </div>
        <div class="user-content">
          <img class="user-img" src="https://images.unsplash.com/photo-1523895665936-7bfe172b757d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGNvbG9yJTIwYmFja2dyb3VuZHN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60" alt="">
          <div class="user-name">
            <h5 class="name1">Nelson Ekango</h5>
            <p class="name2">Nelson Ekango</p>
          </div>
          <div title="Rimuovi" class="single-result-close"><i class="fa-sharp fa-solid fa-xmark"></i></div>
        </div>
        <div class="user-content">
          <img class="user-img" src="https://images.unsplash.com/photo-1523895665936-7bfe172b757d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGNvbG9yJTIwYmFja2dyb3VuZHN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60" alt="">
          <div class="user-name">
            <h5 class="name1">Emmanuelle Wondo</h5>
            <p class="name2">Emmanuelle Wondo</p>
          </div>
          <div title="Rimuovi" class="single-result-close"><i class="fa-sharp fa-solid fa-xmark"></i></div>
        </div>
        <div class="user-content">
          <img class="user-img" src="https://images.unsplash.com/photo-1523895665936-7bfe172b757d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGNvbG9yJTIwYmFja2dyb3VuZHN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60" alt="">
          <div class="user-name">
            <h5 class="name1">Steeve Mokoko</h5>
            <p class="name2">Steeve Mokoko</p>
          </div>
          <div title="Rimuovi" class="single-result-close"><i class="fa-sharp fa-solid fa-xmark"></i></div>
        </div>
        <div class="user-content">
          <img class="user-img" src="https://images.unsplash.com/photo-1523895665936-7bfe172b757d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGNvbG9yJTIwYmFja2dyb3VuZHN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60" alt="">
          <div class="user-name">
            <h5 class="name1">Ellen Maregrande</h5>
            <p class="name2">Ellen Maregrande</p>
          </div>
          <div title="Rimuovi" class="single-result-close"><i class="fa-sharp fa-solid fa-xmark"></i></div>
        </div>
        <div class="user-content">
          <img class="user-img" src="https://images.unsplash.com/photo-1523895665936-7bfe172b757d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGNvbG9yJTIwYmFja2dyb3VuZHN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60" alt="">
          <div class="user-name">
            <h5 class="name1">Daiana Lanzarone</h5>
            <p class="name2">Daiana Lanzarone</p>
          </div>
          <div title="Rimuovi" class="single-result-close"><i class="fa-sharp fa-solid fa-xmark"></i></div>
        </div>
        <div class="user-content">
          <img class="user-img" src="https://images.unsplash.com/photo-1523895665936-7bfe172b757d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGNvbG9yJTIwYmFja2dyb3VuZHN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60" alt="">
          <div class="user-name">
            <h5 class="name1">Simona Maltese</h5>
            <p class="name2">Simona Maltese</p>
          </div>
          <div title="Rimuovi" class="single-result-close"><i class="fa-sharp fa-solid fa-xmark"></i></div>
        </div>
        <div class="user-content">
          <img class="user-img" src="https://images.unsplash.com/photo-1523895665936-7bfe172b757d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGNvbG9yJTIwYmFja2dyb3VuZHN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60" alt="">
          <div class="user-name">
            <h5 class="name1">Gianluca Baglini</h5>
            <p class="name2">Gianluca Baglini</p>
          </div>
          <div title="Rimuovi" class="single-result-close"><i class="fa-sharp fa-solid fa-xmark"></i></div>
        </div>
        <div class="user-content">
          <img class="user-img" src="https://images.unsplash.com/photo-1523895665936-7bfe172b757d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGNvbG9yJTIwYmFja2dyb3VuZHN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60" alt="">
          <div class="user-name">
            <h5 class="name1">Etienne Dussert</h5>
            <p class="name2">Etienne Dussert</p>
          </div>
          <div title="Rimuovi" class="single-result-close"><i class="fa-sharp fa-solid fa-xmark"></i></div>
        </div> 
      </div>
    </section>
   
    <!-- LAPTOP AND TABLET SIDEBAR -->
    <nav class="sidebar">
      <header>
        <div class="logo close">
          <p><span>Re</span>_lease</p>
        </div>
        <i class="fa-solid fa-chevron-right toggle icon" id="toggle-siderbar"></i>
      </header>
      <div class="menu-bar">
        <div class="menu">
          <ul class="menu-links">
            <li class="nav-link" title="Profil">
              <a href="<%= request.getContextPath()+ "/areaUtente"%>">
                <i class="fa-solid fa-circle-user icon"></i>
                <span class="text nav-text" >Profil</span>
              </a>
            </li>
            <li class="nav-link" title="Home">
              <a href="<%= request.getContextPath()+ "/homepage"%>">
                <i class="fa-solid fa-house icon" ></i>
                <span class="text nav-text">Home</span>
              </a>
            </li>
            <label for="click1">
              <li class="nav-link" title="Crea">
                <i class="fa-regular fa-square-plus icon" ></i>
                <span class="text nav-text">Crea</span>
              </li>
            </label>
          </ul>
          <label for="laptop-search">
            <li class="search-box" title="Search">
              <i class="fa-solid fa-magnifying-glass icon "></i>
              <span class="text nav-text">Cerca</span>
            </li>
          </label>
        </div>
        <div class="bottom-content">
          <li title="Logout">
            <a href="<%= request.getContextPath()+ "/logout"%>">
              <i class="fa-sharp fa-solid fa-arrow-right-to-bracket fa-rotate-180 icon" ></i>
              <span class="text nav-text" >Logout</span>
            </a>
          </li>
          <li class="mode" title="Light/Dark Mode">
            <div class="moon-sun">
              <i class="fa-regular fa-moon fa-beat-fade icon moon" ></i>
              <i class="fa-regular fa-sun fa-spin icon sun" ></i>
            </div>
            <span class="mode-text text">Light Mode</span>
            <div class="toggle-switch">
              <span class="switch"></span>
            </div>
          </li>
        </div>
      </div>
    </nav>

    <!-- MODAL CREA -->
    <input type="checkbox" id="click1">
    <div class="content1">
      <div class="container">
        <div class="btn-close">
          <label for="click1" title="Close" class="fas fa-times"></label>
        </div>
        <div class="header">
          <p>Crea un nuovo post</p>
        </div>
        <form action="" method="post" class="form-crea" enctype="multipart/form-data">
          <input class="choose-file" type="file" name="fileUpload" id="fileUpload">
          <textarea name="" id="" placeholder="description..." ></textarea>
          <input class="btn-carica" type="submit" value="Carica file">
        </form>
        <div class="line"></div>
      </div>
    </div>

    <!-- LAPTOP AND TABLET SIDE-SEARCH-BAR -->
    <section class="side-search-bar">
      <header>
        <div class="logo">
          <p><span>Re</span>_lease</p>
        </div>
      </header>
      <div class="search-bar-form">
        <form action="" method="post" id="form-cerca-laptop" class="form-cerca">
          <input id="laptop-search" type="text" placeholder="Cerca...">
          <i title="Close" class="fa-solid fa-circle-xmark search-laptop-close" id="search-laptop-close"></i>
        </form>
      </div>
      <hr>
      <div class="search-result-laptop">
        <div class="user-content">
          <img class="user-img" src="https://images.unsplash.com/photo-1523895665936-7bfe172b757d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGNvbG9yJTIwYmFja2dyb3VuZHN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60" alt="">
          <div class="user-name">
            <h5 class="name1">Mamadou Touré</h5>
            <p class="name2">Mamadou Touré</p>
          </div>
          <div title="Rimuovi" class="single-result-close"><i class="fa-sharp fa-solid fa-xmark"></i></div>
        </div>
        <div class="user-content">
          <img class="user-img" src="https://images.unsplash.com/photo-1523895665936-7bfe172b757d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGNvbG9yJTIwYmFja2dyb3VuZHN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60" alt="">
          <div class="user-name">
            <h5 class="name1">Darane Mikala</h5>
            <p class="name2">Darane Mikala</p>
          </div>
          <div title="Rimuovi" class="single-result-close"><i class="fa-sharp fa-solid fa-xmark"></i></div>
        </div>
        <div class="user-content">
          <img class="user-img" src="https://images.unsplash.com/photo-1523895665936-7bfe172b757d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGNvbG9yJTIwYmFja2dyb3VuZHN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60" alt="">
          <div class="user-name">
            <h5 class="name1">Ginevra Ducceschi</h5>
            <p class="name2">Ginevra Ducceschi</p>
          </div>
          <div title="Rimuovi" class="single-result-close"><i class="fa-sharp fa-solid fa-xmark"></i></div>
        </div>
        <div class="user-content">
          <img class="user-img" src="https://images.unsplash.com/photo-1523895665936-7bfe172b757d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGNvbG9yJTIwYmFja2dyb3VuZHN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60" alt="">
          <div class="user-name">
            <h5 class="name1">Nelson Ekango</h5>
            <p class="name2">Nelson Ekango</p>
          </div>
          <div title="Rimuovi" class="single-result-close"><i class="fa-sharp fa-solid fa-xmark"></i></div>
        </div>
        <div class="user-content">
          <img class="user-img" src="https://images.unsplash.com/photo-1523895665936-7bfe172b757d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGNvbG9yJTIwYmFja2dyb3VuZHN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60" alt="">
          <div class="user-name">
            <h5 class="name1">Emmanuelle Wondo</h5>
            <p class="name2">Emmanuelle Wondo</p>
          </div>
          <div title="Rimuovi" class="single-result-close"><i class="fa-sharp fa-solid fa-xmark"></i></div>
        </div>
        <div class="user-content">
          <img class="user-img" src="https://images.unsplash.com/photo-1523895665936-7bfe172b757d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGNvbG9yJTIwYmFja2dyb3VuZHN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60" alt="">
          <div class="user-name">
            <h5 class="name1">Steeve Mokoko</h5>
            <p class="name2">Steeve Mokoko</p>
          </div>
          <div title="Rimuovi" class="single-result-close"><i class="fa-sharp fa-solid fa-xmark"></i></div>
        </div>
        <div class="user-content">
          <img class="user-img" src="https://images.unsplash.com/photo-1523895665936-7bfe172b757d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGNvbG9yJTIwYmFja2dyb3VuZHN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60" alt="">
          <div class="user-name">
            <h5 class="name1">Ellen Maregrande</h5>
            <p class="name2">Ellen Maregrande</p>
          </div>
          <div title="Rimuovi" class="single-result-close"><i class="fa-sharp fa-solid fa-xmark"></i></div>
        </div>
        <div class="user-content">
          <img class="user-img" src="https://images.unsplash.com/photo-1523895665936-7bfe172b757d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGNvbG9yJTIwYmFja2dyb3VuZHN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60" alt="">
          <div class="user-name">
            <h5 class="name1">Daiana Lanzarone</h5>
            <p class="name2">Daiana Lanzarone</p>
          </div>
          <div title="Rimuovi" class="single-result-close"><i class="fa-sharp fa-solid fa-xmark"></i></div>
        </div>
        <div class="user-content">
          <img class="user-img" src="https://images.unsplash.com/photo-1523895665936-7bfe172b757d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGNvbG9yJTIwYmFja2dyb3VuZHN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60" alt="">
          <div class="user-name">
            <h5 class="name1">Simona Maltese</h5>
            <p class="name2">Simona Maltese</p>
          </div>
          <div title="Rimuovi" class="single-result-close"><i class="fa-sharp fa-solid fa-xmark"></i></div>
        </div>
        <div class="user-content">
          <img class="user-img" src="https://images.unsplash.com/photo-1523895665936-7bfe172b757d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGNvbG9yJTIwYmFja2dyb3VuZHN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60" alt="">
          <div class="user-name">
            <h5 class="name1">Gianluca Baglini</h5>
            <p class="name2">Gianluca Baglini</p>
          </div>
          <div title="Rimuovi" class="single-result-close"><i class="fa-sharp fa-solid fa-xmark"></i></div>
        </div>
        <div class="user-content">
          <img class="user-img" src="https://images.unsplash.com/photo-1523895665936-7bfe172b757d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGNvbG9yJTIwYmFja2dyb3VuZHN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60" alt="">
          <div class="user-name">
            <h5 class="name1">Etienne Dussert</h5>
            <p class="name2">Etienne Dussert</p>
          </div>
          <div title="Rimuovi" class="single-result-close"><i class="fa-sharp fa-solid fa-xmark"></i></div>
        </div>
      </div>
      <div class="menu">
        <ul class="menu-links">
          <li class="nav-link">
            <a href="<%= request.getContextPath()+ "/homepage"%>">
              <i class="fa-solid fa-house icon" ></i>
              <span class="text nav-text">Home</span>
            </a>
          </li>
          <label for="click1">
            <li class="nav-link">
              <i class="fa-regular fa-square-plus icon" ></i>
              <span class="text nav-text">Crea</span>
            </li>
          </label>
          <li class="nav-link">
            <a href="<%= request.getContextPath()+ "/logout"%>">
              <i class="fa-sharp fa-solid fa-arrow-right-to-bracket fa-rotate-180 icon" ></i>
              <span class="text nav-text" >Logout</span>
            </a>
          </li>
        </ul>    
      </div>
      <div class="profil-content">
        <a href="<%= request.getContextPath()+ "/areaUtente"%>"><img class="ImgLeft" src="https://images.unsplash.com/photo-1635107510862-53886e926b74?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fHByb2ZpbGUlMjBwaWN0dXJlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60" alt=""></a>
        <div class="dati">
          <a href="<%= request.getContextPath()+ "/areaUtente"%>"><p>${sessionScope.utente.username}</p></a>
        </div>
      </div>
    </section>

    <!-- MODAL COMMENTS -->
    <input type="checkbox" id="click">
    <div class="content">
      <div class="container">
        <!--  Left -->
        <div class="leftContent">
          <div class="profil-Info">
            <div class="profil-Info-img" >
              <img src="https://images.unsplash.com/photo-1529331218549-a05e1c5c64cc?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8aW1hZ2VuJTIwcGVyc29uYWx8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60" alt="">
            </div>
            <h5>Alpha<br><span>Libreville, Gabon</span></h5>
          </div>

          <div class="modal-post">
            <img src="https://images.unsplash.com/photo-1466096115517-bceecbfb6fde?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80" alt="">
          </div>

          <div class="modal-action">
            <label class=""><i title="Like" class="fa-regular fa-heart modal-heart" id="modal-blu" onclick="likeButton()" ></i></label>
            <label for="newComment" class=""><i title="comment" class="fa-regular fa-comment icon"></i></label>
          </div>
          <h4 class="modal-likes"></h4>
          <div class="legend">
            <h4 class="message">
              <b>Alpha</b> Tutto quello che vuole, lo compra a spese dell'anima. <br>
              <span>#love</span>
              <span>#passion</span>
              <span>#release</span>
            </h4>
          </div>
          <div class="addcomments">
            <div class="imageUser">
              <img class="ImgComment" src="https://images.unsplash.com/photo-1635107510862-53886e926b74?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fHByb2ZpbGUlMjBwaWN0dXJlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60" alt="">
            </div>
            <form action="" class="form-comment">
              <p id="userInSessione">${sessionScope.utente.username}</p> <!--In display none ma viene ricuperato per poi fare comparire le user name dell'utente in sessione-->
              <input type="text" id="newComment" class="newComment" placeholder="Add a comment...">
              <button type="submit">pubblica</button>
            </form>
          </div>
          <h5 class="time">2 hours ago</h5>
        </div>
        <!-- Right -->
        <div class="rightContent">
          <div class="header-content">
            <label for="click" title="Close" class="fas fa-times"></label>
            <label for="click" title="Close" class="arrow-close"><i class="fa-solid fa-arrow-left"></i></label>
          </div>
          <div class="title">
            <h5>All comments</h5>
          </div>
          <div class="allComments">
            <div class="contentComment" id="baseComment">
              <div class="imgUserComment">
                <img src="https://images.unsplash.com/photo-1523895665936-7bfe172b757d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGNvbG9yJTIwYmFja2dyb3VuZHN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60" alt="">
              </div>
              <div class="comment">
                <h5>Daiana Lanzarone</h5>
                <div class="singleComment">
                  <p>Io Torino l'ho girata e rigirata decine e decine di volte. Beh sai che c'è? facciamo un giro?</p>
                </div>
              </div>
              <button class="deleteButton">
                <i class="fa-regular fa-trash-can"></i>
              </button>
            </div>
            <div class="contentComment" id="baseComment">
              <div class="imgUserComment">
                <img src="https://images.unsplash.com/photo-1523895665936-7bfe172b757d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGNvbG9yJTIwYmFja2dyb3VuZHN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60" alt="">
              </div>
              <div class="comment">
                <h5>Simona Maltese</h5>
                <div class="singleComment">
                  <p>A me i figli non dovranno neanche faticare per respirare talmente saro ricca.</p>
                </div>
              </div>
              <button class="deleteButton">
                <i class="fa-regular fa-trash-can"></i>
              </button>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- MAIN -->
    <section class="home">
      <div class="home-main">
        <div class="card">
          <div class="top">
            <div class="userDetails">
              <a href="#"><img class="coverPost" src="https://images.unsplash.com/photo-1529331218549-a05e1c5c64cc?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8aW1hZ2VuJTIwcGVyc29uYWx8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60" alt=""></a>
              <h5>Alpha<br><span>Libreville, Gabon</span></h5>
            </div>
          </div>
          <div class="imgEx">
            <img class="post-imgEx" src="https://images.unsplash.com/photo-1466096115517-bceecbfb6fde?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80" alt="">
          </div>
          <div class="action">
            <label class=""><i title="Like" class="fa-regular fa-heart heart" id="blu" onclick="likeButton()" ></i></label>
            <label for="click" class=""><i title="Comment" class="fa-regular fa-comment icon"></i></label>
          </div>
          <h4 class="likes"></h4>
          <div class="legend">
            <h4 class="message">
              <b>Alpha</b> Tutto quello che vuole, lo compra a spese dell'anima. <br>
              <span>#love</span>
              <span>#passion</span>
              <span>#release</span>
            </h4>
          </div>
          <label for="click" class="comments">View all comments</label>
          <div class="addcomments feedComment">
            <img class="ImgComment" src="https://images.unsplash.com/photo-1635107510862-53886e926b74?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fHByb2ZpbGUlMjBwaWN0dXJlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60" alt="">
            <form action="" class="form-comment">
              <p id="feedUserInSessione">${sessionScope.utente.username}</p>
              <input type="text" id="newCommentFeed" class="linkComment" placeholder="Add a comment...">
              <button type="submit">pubblica</button>
            </form>
          </div>
          <h5 class="postTime">2 hours ago</h5>
        </div>
      </div>

      <!-- LAPTOP AND TABLET RIGHT-BAR -->
      <div class="right-nav">
        <div class="profil-content">
          <a href="<%= request.getContextPath()+ "/areaUtente"%>"><img src="https://images.unsplash.com/photo-1635107510862-53886e926b74?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fHByb2ZpbGUlMjBwaWN0dXJlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60" alt=""></a>
          <div class="dati">
             <a href="<%= request.getContextPath()+ "/areaUtente"%>"><p>${sessionScope.utente.username}</p></a>
          </div>
        </div>
        <div class="users-content">
          <div class="suggerimenti">
            <h5>Others users</h5>
            <a href="<%= request.getContextPath()+ "/users"%>"><h5>All users</h5></a>
          </div>
          <div class="users">
            <img class="user-img" src="https://images.unsplash.com/photo-1523895665936-7bfe172b757d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGNvbG9yJTIwYmFja2dyb3VuZHN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60" alt="">
            <p class="username">Mamadou Touré</p>
          </div>
          <div class="users">
            <img class="user-img" src="https://images.unsplash.com/photo-1523895665936-7bfe172b757d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGNvbG9yJTIwYmFja2dyb3VuZHN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60" alt="">
            <p class="username">Darane Mikala</p>
          </div>
          <div class="users">
            <img class="user-img" src="https://images.unsplash.com/photo-1523895665936-7bfe172b757d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGNvbG9yJTIwYmFja2dyb3VuZHN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60" alt="">
            <p class="username">Ginevra Ducceschi</p>
          </div>
          <div class="users">
            <img class="user-img" src="https://images.unsplash.com/photo-1523895665936-7bfe172b757d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGNvbG9yJTIwYmFja2dyb3VuZHN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60" alt="">
            <p class="username">Nelson Ekango</p>
          </div>
          <div class="users">
            <img class="user-img" src="https://images.unsplash.com/photo-1523895665936-7bfe172b757d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGNvbG9yJTIwYmFja2dyb3VuZHN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60" alt="">
            <p class="username">Emmanuelle Wondo</p>
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
        <!-- ARROW TORNA SU -->
        <div class="arrow">
          <a href="#"><i class="fa-solid fa-arrow-up fa-bounce"></i></a>
          <p>Torna su</p>
        </div>
      </div>

      <!-- MOBILE FOOTER -->
      <nav class="mobile-footer">
        <div class="menu-bar">
          <li class="mode">
            <div class="toggle-switch2" title="Dark/Light Mode">
              <span class="switch"></span>
            </div>
          </li>
          <div class="menu">
            <ul class="menu-links">
              <li class="nav-link" title="Profil">
                <a href="<%= request.getContextPath()+ "/areaUtente"%>">
                  <i class="fa-solid fa-circle-user icon"></i>
                </a>
              </li>
              <li class="nav-link" title="Home">
                <a href="<%= request.getContextPath()+ "/homepage"%>">
                  <i class="fa-solid fa-house icon"></i>
                </a>
              </li>
              <label for="click1">
                <li class="nav-link" title="Crea">
                  <i class="fa-regular fa-square-plus icon" ></i>
                </li>
              </label>
            </ul>
          </div>
          <div class="bottom-content" title="Logout">
           <li class="">
              <a href="<%= request.getContextPath()+ "/logout"%>">
                <i class="fa-sharp fa-solid fa-arrow-right-to-bracket fa-rotate-180 icon"></i>
              </a>
           </li>
          </div>
        </div>
      </nav>
    </section>
    <script><%@include file = "/Js/homepage.areaUtente.js"%></script>
  </body>
</html>