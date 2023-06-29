document.onreadystatechange = function () {
  var state = document.readyState;
  if (state == "interactive") {
    document.getElementById("preloader").style.visibility = "visible";
  } else if (state == "complete") {
    setTimeout(function () {
      document.getElementById("preloader").style.visibility = "hidden";
    }, 3000); // Imposta il tempo di visualizzazione del preloader
  }
};
