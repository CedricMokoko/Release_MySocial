<!DOCTYPE html>
<html lang="it">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/462fa9c33e.js" crossorigin="anonymous"></script>
	<style><%@include file="/Css/areaUtente.css"%></style>
	<link rel="stylesheet"
	media=" only screen and (min-width:993px) and (max-width:1200px)"
	href="<%=request.getContextPath() %>//Css/areaUtente.mobile.css">
    <link rel="stylesheet"
	media=" only screen and (min-width:769px) and (max-width:992px)"
	href="<%=request.getContextPath() %>//Css/areaUtente.mobile.css">
	<link rel="stylesheet"
	media=" only screen and (min-width:577px) and (max-width:768px)"
	href="<%=request.getContextPath() %>//Css/areaUtente.mobile.css">
	<link rel="stylesheet"
	media="only screen and (max-width:576px)"
	href="<%=request.getContextPath() %>//Css/areaUtente.mobile.css">
  <title> AREA UTENTE</title>
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
    </section>

    
    <!-- MAIN -->

    <!-- MODAL MODIFICA PROFILO -->
    <input type="checkbox" id="click">
    <div class="content">
      <div class="container">
        <div class="btn-close">
          <label for="click" title="Close" class="fas fa-times"></label>
        </div>
        <div class="header">
          <p>Cambia foto e/o username</p>
        </div>
        <form action="" method="post" class="form-crea" enctype="multipart/form-data">
          <input class="choose-file" type="file" name="fileUpload" id="fileUpload">
          <input class="cambio-username" name="username" type="text" placeholder="Cambia username...">
          <input class="btn-carica" type="submit" value="Modifica">
        </form>
        <div class="line"></div>
      </div>
    </div>

    <!-- MODAL MODIFICA POST  -->
    <input type="checkbox" id="click2">
    <div class="content2">
      <div class="container">
        <div class="btn-close">
          <label for="click2" title="Close" class="fas fa-times"></label>
        </div>
        <div class="header">
          <p>Modifica la descrizione del post</p>
        </div>
        <form action="" method="post" class="form-crea" enctype="multipart/form-data">
          <textarea name="" id="" placeholder=" new description..." ></textarea>
          <input class="btn-carica" type="submit" value="Modifica">
        </form>
        <div class="line"></div>
      </div>
    </div>
   
    <section class="home">
      <div class="home-main">
        <div class="head-user">
          <div class="info">
            <div class="imgUtente">
              <img src="https://images.unsplash.com/photo-1635107510862-53886e926b74?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fHByb2ZpbGUlMjBwaWN0dXJlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60" alt=>
            </div>
            <h5>${utente.username}</h5>
          </div>
          <div class="content-right">
            <div class="name-modif">
              <h3>${utente.username}</h3>
              <div class="modifica">
                <label for="click" class="btnModifica">
                  Modifica profilo
                </label>
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
            <h5>${utente.username}</h5>
          </div>
        </div>
        <hr>

        <div class="card-content">
          <div class="card">
            <div class="postImg">
              <img src="https://images.unsplash.com/photo-1521575107034-e0fa0b594529?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cG9zdHxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60" alt="">
            </div>
            <div class="postOption">
              <label class="cancella-post" title="Cancella post" >
                <i class="fa-regular fa-trash-can"></i>
              </label>
              <label for="click2" class="modifica-post" title="Modifica post" >
                <i class="fa-solid fa-sliders"></i>
              </label>
            </div>
          </div>
          <div class="card">
            <div class="postImg">
              <img src="https://images.unsplash.com/photo-1536497526299-bcec291e2a91?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8c2NyaXR0YSUyMHJlbGVhc2V8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60" alt="">
            </div>
            <div class="postOption">
              <label class="cancella-post" title="Cancella post" >
                <i class="fa-regular fa-trash-can"></i>
              </label>
              <label for="click2" class="modifica-post" title="Modifica post" >
                <i class="fa-solid fa-sliders"></i>
              </label>
            </div>
          </div>
          <div class="card">
            <div class="postImg">
              <img src="https://images.unsplash.com/photo-1531297484001-80022131f5a1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=820&q=80" alt="">
            </div>
            <div class="postOption">
              <label class="cancella-post" title="Cancella post" >
                <i class="fa-regular fa-trash-can"></i>
              </label>
              <label for="click2" class="modifica-post" title="Modifica post" >
                <i class="fa-solid fa-sliders"></i>
              </label>
            </div>
          </div>
          <div class="card">
            <div class="postImg">
              <img src="https://images.unsplash.com/photo-1466096115517-bceecbfb6fde?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80" alt="">
            </div>
            <div class="postOption">
              <label class="cancella-post" title="Cancella post" >
                <i class="fa-regular fa-trash-can"></i>
              </label>
              <label for="click2" class="modifica-post" title="Modifica post" >
                <i class="fa-solid fa-sliders"></i>
              </label>
            </div>
          </div>
          <div class="card">
            <div class="postImg">
              <img src="https://images.unsplash.com/photo-1524668951403-d44b28200ce0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fG1hY2NoaW5ldHRhJTIwZGElMjBzY3JpdmVyZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60" alt="">
            </div>
            <div class="postOption">
              <label class="cancella-post" title="Cancella post" >
                <i class="fa-regular fa-trash-can"></i>
              </label>
              <label for="click2" class="modifica-post" title="Modifica post" >
                <i class="fa-solid fa-sliders"></i>
              </label>
            </div>
          </div>          
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
           <a href="<%= request.getContextPath()+ "/logout"%>">
           <li class="">
              <a href="login.html">
                <i class="fa-sharp fa-solid fa-arrow-right-to-bracket fa-rotate-180 icon"></i>
              </a>
           </li>
          </div>
        </div>
      </nav>
    </section>  
    <script><%@include file = "/Js/homepage.areaUtente.js"%></script>
    <script>
      PostOption();
      CancellazionePost();
    </script>
 </body>
</html>