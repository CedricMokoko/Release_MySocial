/** HOMEPAGE AND AREA UTENTE */
const body = document.querySelector("body");


/* 1-LAPTOP AND TABLET SIDE_BAR open and close */
const sidebar = body.querySelector(".sidebar");
const toggle = body.querySelector(".toggle");

toggle.addEventListener("click", () => {
  sidebar.classList.toggle("close");
});


/* 2-MODE dark and light */
const modeSwitch = body.querySelector(".toggle-switch");
const modeSwitch2 = body.querySelector(".toggle-switch2");
const modeText = body.querySelector(".mode-text");

// Funzione per impostare la modalità
function setMode(mode) {
  body.classList.toggle("dark", mode === "dark");
  if (mode === "dark") {
    modeText.innerText = "Dark Mode";
  } else {
    modeText.innerText = "Light Mode";
  }
}
// Controlla se la modalità è già stata salvata in localStorage
const savedMode = localStorage.getItem("mode");
if (savedMode) {
  setMode(savedMode);
}
// 2a-Laptop
modeSwitch.addEventListener("click", () => {
  body.classList.toggle("dark");
  const currentMode = body.classList.contains("dark") ? "dark" : "light";
  localStorage.setItem("mode", currentMode);
  setMode(currentMode);
});
// 2b-Mobile
modeSwitch2.addEventListener("click", () => {
  body.classList.toggle("dark");
  const currentMode = body.classList.contains("dark") ? "dark" : "light";
  localStorage.setItem("mode", currentMode);
});


/* 3-RICERCA PER LAPTOP*/
const searchLaptop= body.querySelector(".search-box");
const sideSearchLaptop = body.querySelector(".side-search-bar");
const modalSearchLaptopClose = body.querySelector(".search-laptop-close");
const searchInputLaptop = document.getElementById('laptop-search');
// Seleziona tutti gli elementi con la classe "user-content"
const userContentsLaptop = document.querySelectorAll('.user-content');
// Seleziona l'elemento input con l'id "laptop-search"
const searchFormLaptop = document.getElementById('form-cerca-laptop');

/* 3a-LAPTOP SIDE_SEARCH_BAR open */
searchLaptop.addEventListener("click", () => {
  sideSearchLaptop.classList.add("open");
  searchModalMobile.classList.add("open");
  document.getElementById("caret-down").style.display="block";
  document.getElementById("search-mobile-close").style.display="block";
  document.getElementById("icon-search-mobile").style.display="none";
});

//Aggiorna l'input del laptop se l'input del mobile non è vuoto.
function updateInputLaptop() {
  var mobileInputValue = document.getElementById('mobile-search').value;
  document.getElementById('laptop-search').value = mobileInputValue;
}
// Gestore di eventi all'input per l'evento "input"
searchInputLaptop.addEventListener('input', function() {
  const searchTermLaptop = this.value.toLowerCase();
  // Itera su tutti gli elementi "user-content"
  userContentsLaptop.forEach(userContentLaptop => {
    const userName = userContentLaptop.querySelector('.name1').textContent.toLowerCase();
    // Mostra o nascondi l'elemento "user-content" in base alla corrispondenza del nome utente con il termine di ricerca
    if (searchTermLaptop === '') {
      userContentLaptop.style.display = 'none';
    } else if (userName.includes(searchTermLaptop)) {
      userContentLaptop.style.display = 'flex';
    } else {
      userContentLaptop.style.display = 'none';
    }
    updateInputMobile(); //Aggiorna l'input del mobile con il testo digitato in quello del laptop.
  });
});
searchFormLaptop.addEventListener('submit', function(event) {
  event.preventDefault(); // Empêche la soumission du formulaire
  search();
});
/* 3b-LAPTOP SIDE_SEARCH_BAR close */
modalSearchLaptopClose.addEventListener("click", () => {
  sideSearchLaptop.classList.remove("open");
  searchModalMobile.classList.remove("open");
  document.getElementById("caret-down").style.display="none";
  document.getElementById("icon-search-mobile").style.display="block";
  document.getElementById("search-mobile-close").style.display="none";
  document.getElementById("laptop-search").value=""; //Cancella il contenuto dell'input oltre a chiudere la SIDE_SEARCH_BAR
  document.querySelector('.input-box').value=""; //Cancella il contenuto dell'input oltre a chiudere la SEARCH_BAR del mobile
});


/* 4-RICERCA PER MOBILE */
const searchInputMobile= body.querySelector(".input-box");
const searchModalMobile = document.querySelector('.search-modal-mobile');
const searchModalMobileClose = body.querySelector(".search-mobile-close");
const searchFormMobile = document.getElementById('form-cerca');
const searchResultsMobile = document.querySelectorAll('.user-content');

/* 4a-MODAL MOBILE SEARCH open */
searchInputMobile.addEventListener("click", () => {
  searchModalMobile.classList.add("open");
  sideSearchLaptop.classList.add("open");
  document.getElementById("caret-down").style.display="block";
  document.getElementById("search-mobile-close").style.display="block";
  document.getElementById("icon-search-mobile").style.display="none";
});
//Aggiorna l'input mobile se l'input laptop non è vuoto.
function updateInputMobile() {
  var laptopInputValue = document.getElementById('laptop-search').value;
  document.getElementById('mobile-search').value = laptopInputValue;
}
function search() {
  const searchTermMobile = searchInputMobile.value.toLowerCase();
  searchResultsMobile.forEach(result => {
    const name = result.querySelector('.name1').textContent.toLowerCase();
    const match = name.includes(searchTermMobile);
    if (searchTermMobile === '') {
      result.style.display = 'none'; // Masquer l'élément si l'entrée de recherche est vide
    } else if (match) {
      result.style.display = 'flex';
    } else {
      result.style.display = 'none';
    }
    updateInputLaptop()
  });
}
// Événement de soumission du formulaire de recherche
searchFormMobile.addEventListener('submit', function(event) {
  event.preventDefault(); // Empêche la soumission du formulaire
  search();
});
// Afficher le résultat de la recherche au fur et à mesure que l'utilisateur saisit
searchInputMobile.addEventListener('input', search);
/* 4b-MODAL MOBILE SEARCH close */
searchModalMobileClose.addEventListener("click", () => {
  searchModalMobile.classList.remove("open");
  sideSearchLaptop.classList.remove("open");
  document.getElementById("caret-down").style.display="none";
  document.getElementById("icon-search-mobile").style.display="block";
  document.getElementById("search-mobile-close").style.display="none";
  document.querySelector('.input-box').value=""; //Cancella il contenuto dell'input oltre a chiudere la SEARCH_BAR del mobile
  document.getElementById("laptop-search").value=""; //Cancella il contenuto dell'input oltre a chiudere la SIDE_SEARCH_BAR del laptop
});


/* 5-RIMUOVERE UTENTE TROVATO TRAMITE RICERCA CON L'ICONA CLOSE A DESTRA */

// Seleziona tutti gli elementi con la classe "single-result-close"
const closeIcons = document.querySelectorAll('.single-result-close');
// Aggiungi un gestore di eventi a ciascuna icona di chiusura
closeIcons.forEach(icon => {
  icon.addEventListener('click', function() {
    // Seleziona l'elemento genitore dell'icona di chiusura
    const userContent = this.parentNode;
    // Applica la proprietà CSS "display: none" all'elemento genitore
    userContent.style.display = 'none';
  });
});



/** ONLY HOMEPAGE */

/* 6-LIKE feed and modal */
function likeButton() {
  var likeIcon = document.getElementById("blu");
  var likeIconModal = document.getElementById("modal-blu");
  var likesCount = document.querySelector(".likes");
  var likesCountModal = document.querySelector(".modal-likes");
  // Controllo se il numero di like è vuoto o meno
  if (likesCount.textContent === "" && likesCountModal.textContent === "") {
    likesCount.textContent = "1 like";
    likesCountModal.textContent = "1 like";
    likeIcon.classList.add("liked");
    likeIconModal.classList.add("liked");
  }else {
    var likes = parseInt(likesCount.textContent);
    var likesModal = parseInt(likesCountModal.textContent);
    //Controllo se la Stringa è vuota prima di convertirla in number
    if(isNaN(likes)){
      likesCount.textContent = "1 like";
      likesCountModal.textContent = "1 like";
      likeIcon.classList.add("liked");
      likeIconModal.classList.add("liked");
    }else{
      if (likeIcon.classList.contains("liked") && likeIconModal.classList.contains("liked")) {
        likes--;
        likesModal--;
        if (likes === 0 && likesModal === 0) {
          likesCount.textContent = "";
          likesCountModal.textContent = "";
        } else if (likes === 1 && likesModal === 1) {
          likesCount.textContent = "1 like";
          likesCountModal.textContent = "1 like";
        } else {
          likesCount.textContent = likes + " likes";
          likesCountModal.textContent = likesModal + " likes";
        }
        likeIcon.classList.remove("liked");
        likeIconModal.classList.remove("liked"); 
      }else {
        likes++;
        likesModal++;
        if (likes === 1 && likesModal === 1) {
          likesCount.textContent = "1 like";
          likesCountModal.textContent = "1 like";
        } else {
          likesCount.textContent = likes + " likes";
          likesCountModal.textContent = likes + " likes";
        }
        likeIcon.classList.add("liked");
        likeIconModal.classList.add("liked");
      }
    }
  }
}

/** ONLY AREA UTENTE */

/* 8- POST OPTIONS */
function PostOption() {
  const cards = document.querySelectorAll('.card');
  cards.forEach((card) => {
    const postOption = card.querySelector('.postOption');
    card.addEventListener('mouseenter', () => {
      postOption.style.visibility = 'visible';
    });
    card.addEventListener('mouseleave', () => {
      postOption.style.visibility = 'hidden';
    });
  });
}
function CancellazionePost() {
  const cancelIconList = document.querySelectorAll(' .cancella-post');

  cancelIconList.forEach((cancelIcon) => {
    cancelIcon.addEventListener('click', () => {
      const postCard = cancelIcon.closest('.card');
      postCard.remove();
    });
  });
}

