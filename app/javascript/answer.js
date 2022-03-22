function post (){
  const submit = document.getElementById("correct");
  submit.addEventListener("click", () => {
    console.log("イベント発火");
  });
};

window.addEventListener('load', post);