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


/* 3-RICERCA */

//Seleziona l'elemento input con l'id "laptop-search"
const searchInput = document.getElementById('laptop-search');
//Seleziona tutti gli elementi con la classe "user-content"
const userContents = document.querySelectorAll('.user-content');
//Gestore di eventi all'input per l'evento "input"
searchInput.addEventListener('input', function() {
  const searchTerm = this.value.toLowerCase();

  //Itera su tutti gli elementi "user-content"
  userContents.forEach(userContent => {
    const userName = userContent.querySelector('.name1').textContent.toLowerCase();
    //Mostra o nasconde l'elemento "user-content" in base alla corrispondenza del nome utente con il termine di ricerca
    if (searchTerm === '') {
      userContent.style.display = 'none';
    } else if (userName.includes(searchTerm)) {
      userContent.style.display = 'flex';
    } else {
      userContent.style.display = 'none';
    }
  });
});

/* 4-CANCELLARE IL TESTO DIGITATO NELL'INPUT */

//Seleziona l'elemento con l'id "search-close"
const searchClose = document.getElementById('search-close');
searchClose.addEventListener('click', function() {
  //Cancella il valore dell'input
  searchInput.value = '';
});


/* 5-CANCELLA UTENTE TROVATO TRAMITE RICERCA */

//Seleziona tutti gli elementi con la classe "single-result-close"
const closeIcons = document.querySelectorAll('.single-result-close');
//Aggiungi un gestore di eventi a ciascuna icona di chiusura
closeIcons.forEach(icon => {
  icon.addEventListener('click', function() {
    //Seleziona l'elemento genitore dell'icona di chiusura
    const userContent = this.parentNode;
    //Applica la proprietà CSS "display: none" all'elemento genitore
    userContent.style.display = 'none';
  });
});




