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


