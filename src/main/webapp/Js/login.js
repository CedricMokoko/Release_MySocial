/* 1-Controllo del modulo di accesso */

// 1a-Regex per validare l'indirizzo email
const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

// 1b-Regex per validare la password con una lunghezza minima di 8 caratteri,
// contenente almeno uno dei seguenti caratteri speciali * % + # @ ? & ! [] {} () / _ .,
// e almeno una cifra da 0 a 9
const passwordRegex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[\*\%\+\#\@\?\&\!\[\]\{\}\(\)\/\_\=\.])[^\s]{8,}$/;

// 1c-Funzione per la validazione del modulo
function validateForm() {
  const emailInput = document.getElementById('email');
  const passwordInput = document.getElementById('password');
  const loginAlert = document.querySelector('.login-alert');
  const email = emailInput.value.trim();
  const password = passwordInput.value.trim();

  // Validazione dell'indirizzo email
  if (!emailRegex.test(email)) {
    loginAlert.textContent = 'Inserisci un indirizzo email valido.';
    return false;
  }

  // Validazione della password
  if (!passwordRegex.test(password)) {
    loginAlert.textContent = 'Inserisci una password valida con una lunghezza minima di 8 caratteri, che contenga almeno uno dei seguenti caratteri speciali (* % + # @ ? & ! [] {} () / _ .), una lettera maiuscola, una lettera minuscola e almeno una cifra da 0 a 9.';
    return false;
  } 

  // Il modulo è valido
  return true;
}

// 1d-Event listener per l'invio del modulo
const loginForm = document.querySelector('.form-box.login');
loginForm.addEventListener('submit', function(event) {
  if (!validateForm()) {
    event.preventDefault(); // Impedisce l'invio del modulo se i campi non sono validi
  }
});


/* 2-Cookies */

// 2a-Funzione per impostare un cookie sicuro
function setSecureCookie(name, value, days) {
  let expires = '';
  if (days) {
    const date = new Date();
    date.setTime(date.getTime() + (days * 24 * 60 * 60 * 1000));
    expires = "; expires=" + date.toUTCString();
  }
  const cookieValue = encodeURIComponent(value);
  document.cookie = name + "=" + cookieValue + expires + "; secure; SameSite=Strict";
}
// 2b-Funzione per ottenere il valore di un cookie
function getCookie(name) {
  const nameEQ = name + "=";
  const cookies = document.cookie.split(';');
  for (let i = 0; i < cookies.length; i++) {
    let cookie = cookies[i];
    while (cookie.charAt(0) === ' ') {
      cookie = cookie.substring(1, cookie.length);
    }
    if (cookie.indexOf(nameEQ) === 0) {
      return decodeURIComponent(cookie.substring(nameEQ.length, cookie.length));
    }
  }
  return null;
}
// 2c-Ottenere gli elementi del modulo
const form = document.querySelector('form');
const rememberCheckbox = document.getElementById('check');
const emailInput = document.getElementById('email');
// 2d-Verificare se è già impostato un cookie "remember"
const rememberValue = getCookie('remember');
const emailValue = getCookie('email');
if (rememberValue === 'true') {
  rememberCheckbox.checked = true;
  // Inserire automaticamente l'email nel campo di accesso
  emailInput.value = emailValue;
}
// 2e-Aggiungere un event listener per l'invio del modulo
form.addEventListener('submit', function(event) {
  // Ottenere il valore dell'email
  const emailValue = emailInput.value;
  // Verificare se la casella di controllo è selezionata
  if (rememberCheckbox.checked) {
    // Impostare un cookie "remember" con una durata di validità di 24 ore
    setSecureCookie('remember', 'true', 1);
    // Registrare anche l'email nel cookie
    setSecureCookie('email', emailValue, 1);
  } else {
    // Eliminare il cookie "remember" impostando una data di scadenza nel passato
    setSecureCookie('remember', '', -1);
    // Eliminare anche il cookie dell'email
    setSecureCookie('email', '', -1);
  }
});
