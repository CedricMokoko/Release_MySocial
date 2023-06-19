<!DOCTYPE html>
<html lang="it">
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	    <script src="https://kit.fontawesome.com/462fa9c33e.js" crossorigin="anonymous"></script>
	    <style><%@include file="/Css/users.css"%></style>
	    <link rel="stylesheet"
	    media=" only screen and (min-width:993px) and (max-width:1200px)"
	    href="<%=request.getContextPath() %>//Css/users.mobile.css">
	    <link rel="stylesheet"
	    media=" only screen and (min-width:769px) and (max-width:992px)"
	    href="<%=request.getContextPath() %>//Css/users.mobile.css">
	    <link rel="stylesheet"
	    media=" only screen and (min-width:577px) and (max-width:768px)"
	    href="<%=request.getContextPath() %>//Css/users.mobile.css">
	    <link rel="stylesheet"
	    media="only screen and (max-width:576px)"
	    href="<%=request.getContextPath() %>//Css/users.mobile.css">
		<title> ALL USERS </title>
	</head>
	<body>
		<!-- LAPTOP SIDEBAR -->
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
	              <a href="<%= request.getContextPath() + "/areaUtente"%>" >
	                <i class="fa-solid fa-circle-user icon"></i>
	                <span class="text nav-text" >Profil</span>
	              </a>
	            </li>
	            <li class="nav-link" title="Home">
	              <a href="<%= request.getContextPath() + "/homepage"%>" >
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
	
	    <!-- MAIN -->
	    <section class="home">
	      <div class="home-main">
	        <div class="search-bar-form">
	          <form action="<%= request.getContextPath() + "/users"%>"  method="post" class="form-cerca">
	            <i class="fa-solid fa-magnifying-glass icon "></i>
	            <input id="laptop-search" type="text" autofocus placeholder="Cerca...">
	            <i title="Cancella testo" class="fa-solid fa-circle-xmark search-close" id="search-close"></i>
	          </form>
	        </div>
	        <hr>
	        <div class="search-result">
	          <div class="user-content">
	            <div class="user-img" ></div>
	            <!-- <img class="user-img" src="/img/elena-mozhvilo-IYiwhXj_lRA-unsplash.jpg" alt=""> -->
	            <div class="user-name">
	              <h5 class="name1">Mamadou Touré</h5>
	              <p class="name2">Mamadou Touré</p>
	            </div>
	            <div title="Rimuovi" class="single-result-close"><i class="fa-sharp fa-solid fa-xmark"></i></div>
	          </div>
	          <div class="user-content">
	            <div class="user-img" ></div>
	            <!-- <img class="user-img" src="/img/elena-mozhvilo-IYiwhXj_lRA-unsplash.jpg" alt=""> -->
	            <div class="user-name">
	              <h5 class="name1">Darane Mikala</h5>
	              <p class="name2">Darane Mikala</p>
	            </div>
	            <div title="Rimuovi" class="single-result-close"><i class="fa-sharp fa-solid fa-xmark"></i></div>
	          </div>
	
	          <div class="user-content">
	            <div class="user-img" ></div>
	            <!-- <img class="user-img" src="/img/elena-mozhvilo-IYiwhXj_lRA-unsplash.jpg" alt=""> -->
	            <div class="user-name">
	              <h5 class="name1">Ginevra Ducceschi</h5>
	              <p class="name2">Ginevra Ducceschi</p>
	            </div>
	            <div title="Rimuovi" class="single-result-close"><i class="fa-sharp fa-solid fa-xmark"></i></div>
	          </div>
	          <div class="user-content">
	            <div class="user-img" ></div>
	            <!-- <img class="user-img" src="/img/elena-mozhvilo-IYiwhXj_lRA-unsplash.jpg" alt=""> -->
	            <div class="user-name">
	              <h5 class="name1">Nelson Ekango</h5>
	              <p class="name2">Nelson Ekango</p>
	            </div>
	            <div title="Rimuovi" class="single-result-close"><i class="fa-sharp fa-solid fa-xmark"></i></div>
	          </div>
	          <div class="user-content">
	            <div class="user-img" ></div>
	            <!-- <img class="user-img" src="/img/elena-mozhvilo-IYiwhXj_lRA-unsplash.jpg" alt=""> -->
	            <div class="user-name">
	              <h5 class="name1">Emmanuelle Wondo</h5>
	              <p class="name2">Emmanuelle Wondo</p>
	            </div>
	            <div title="Rimuovi" class="single-result-close"><i class="fa-sharp fa-solid fa-xmark"></i></div>
	          </div>
	          <div class="user-content">
	            <div class="user-img" ></div>
	            <!-- <img class="user-img" src="/img/elena-mozhvilo-IYiwhXj_lRA-unsplash.jpg" alt=""> -->
	            <div class="user-name">
	              <h5 class="name1">Steeve Mokoko</h5>
	              <p class="name2">Steeve Mokoko</p>
	            </div>
	            <div title="Rimuovi" class="single-result-close"><i class="fa-sharp fa-solid fa-xmark"></i></div>
	          </div>
	          <div class="user-content">
	            <div class="user-img" ></div>
	            <!-- <img class="user-img" src="/img/elena-mozhvilo-IYiwhXj_lRA-unsplash.jpg" alt=""> -->
	            <div class="user-name">
	              <h5 class="name1">Ellen Maregrande</h5>
	              <p class="name2">Ellen Maregrande</p>
	            </div>
	            <div title="Rimuovi" class="single-result-close"><i class="fa-sharp fa-solid fa-xmark"></i></div>
	          </div>
	          <div class="user-content">
	            <div class="user-img" ></div>
	            <!-- <img class="user-img" src="/img/elena-mozhvilo-IYiwhXj_lRA-unsplash.jpg" alt=""> -->
	            <div class="user-name">
	              <h5 class="name1">Daiana Lanzarone</h5>
	              <p class="name2">Daiana Lanzarone</p>
	            </div>
	            <div title="Rimuovi" class="single-result-close"><i class="fa-sharp fa-solid fa-xmark"></i></div>
	          </div>
	          <div class="user-content">
	            <div class="user-img" ></div>
	            <!-- <img class="user-img" src="/img/elena-mozhvilo-IYiwhXj_lRA-unsplash.jpg" alt=""> -->
	            <div class="user-name">
	              <h5 class="name1">Simona Maltese</h5>
	              <p class="name2">Simona Maltese</p>
	            </div>
	            <div title="Rimuovi" class="single-result-close"><i class="fa-sharp fa-solid fa-xmark"></i></div>
	          </div>
	          <div class="user-content">
	            <div class="user-img" ></div>
	            <!-- <img class="user-img" src="/img/elena-mozhvilo-IYiwhXj_lRA-unsplash.jpg" alt=""> -->
	            <div class="user-name">
	              <h5 class="name1">Gianluca Baglini</h5>
	              <p class="name2">Gianluca Baglini</p>
	            </div>
	            <div title="Rimuovi" class="single-result-close"><i class="fa-sharp fa-solid fa-xmark"></i></div>
	          </div>
	          <div class="user-content">
	            <div class="user-img" ></div>
	            <!-- <img class="user-img" src="/img/elena-mozhvilo-IYiwhXj_lRA-unsplash.jpg" alt=""> -->
	            <div class="user-name">
	              <h5 class="name1">Etienne Dussert</h5>
	              <p class="name2">Etienne Dussert</p>
	            </div>
	            <div title="Rimuovi" class="single-result-close"><i class="fa-sharp fa-solid fa-xmark"></i></div>
	          </div>
	        </div>
	      </div>
	
	      <!-- LAPTOP AND TABLET RIGHT-BAR -->
	      <div class="right-nav">
	        <div class="profil-content">
	           <a href="<%= request.getContextPath()+ "/areaUtente"%>"><div class="ImgRight" ></div></a>
	          <div class="dati">
	             <a href="<%= request.getContextPath()+ "/areaUtente"%>"><p>${utente.username}</p></a>
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
	    <script><%@include file = "/Js/users.js"%></script>
	</body>
</html>