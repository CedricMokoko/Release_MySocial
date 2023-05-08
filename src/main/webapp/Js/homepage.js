const body = document.querySelector("body"),
sidebar = body.querySelector(".sidebar"),
toggle = body.querySelector(".toggle"),
searchBtn = body.querySelector(".search-box"),
modeSwitch = body.querySelector(".toggle-switch"),
modeSwitch2 = body.querySelector(".toggle-switch2"),
modeText = body.querySelector(".mode-text");

toggle.addEventListener("click", () => {
  sidebar.classList.toggle("close");
});

searchBtn.addEventListener("click", () => {
  sidebar.classList.remove("close");
});

/*Dark Mode Laptop*/
modeSwitch.addEventListener("click", () => {
  body.classList.toggle("dark");
  if(body.classList.contains("dark")){
    modeText.innerText = "Light"
  }else{
    modeText.innerText = "Dark" 
  }
});

/*Dark Mode Mobile*/
modeSwitch2.addEventListener("click", () => {
  body.classList.toggle("dark");
});

/*Test_Like*/
function likeButton(){
  let heart = document.querySelector(".heart");
  let likes = document.querySelector(".likes");
  if(heart.id.match("blu")){
    likes.innerHTML ="3 likes";
  }else{
    likes.innerHTML ="2 likes";
  }    
}




