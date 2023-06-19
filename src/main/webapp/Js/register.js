// 1. Controllo del modulo di registrazione

// 1a. Espressione regolare per validare l'indirizzo email
const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

// 1b. Espressione regolare per validare la password
const passwordRegex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[\*\%\+\#\@\?\&\!\[\]\{\}\(\)\/\_\=\.])[^\s]{8,}$/;

// 1c. Espressione regolare per validare lo username
const usernameRegex = /^[a-zA-Z0-9_]{4,}$/;

// 1d. Funzione per la validazione del modulo
function validateForm() {
  const usernameInput = document.getElementById('username');
  const emailInput = document.getElementById('email');
  const passwordInput = document.getElementById('password');
  const confirmPasswordInput = document.getElementById('confirmPassword');
  const registerAlert = document.querySelector('.register-alert');
  const username = usernameInput.value.trim();
  const email = emailInput.value.trim();
  const password = passwordInput.value.trim();
  const confirmPassword = confirmPasswordInput.value.trim();

  // Validazione dello username
  if (!usernameRegex.test(username)) {
    registerAlert.textContent = 'Lo username deve contenere almeno 4 caratteri alfanumerici (lettere, numeri o underscore).';
    return false;
  }

  // Validazione dell'indirizzo email
  if (!emailRegex.test(email)) {
    registerAlert.textContent = 'Inserisci un indirizzo email valido.';
    return false;
  }

  // Validazione della password
  if (!passwordRegex.test(password)) {
    registerAlert.textContent = 'Inserisci una password valida con una lunghezza minima di 8 caratteri, che contenga almeno uno dei seguenti caratteri speciali (* % + # @ ? & ! [] {} () / _ .), una lettera maiuscola, una lettera minuscola e almeno una cifra da 0 a 9.';
    return false;
  } 

  // Validazione della conferma della password
  if (password !== confirmPassword) {
    registerAlert.textContent = 'Le password non corrispondono.';
    return false;
  }

  // Il modulo è valido
  return true;
}

// 1e. Event listener per l'invio del modulo
const registerForm = document.querySelector('.form-box.register');
registerForm.addEventListener('submit', function(event) {
  if (!validateForm()) {
    event.preventDefault(); // Impedisce l'invio del modulo se i campi non sono validi
  }
});
