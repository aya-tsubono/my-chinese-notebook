window.addEventListener('load', function(){

  const btn = document.getElementById('answer-btn');
  const text = document.getElementById('answer-text');
  document.getElementById("answer-text").style.visibility ="hidden";

  btn.addEventListener('click', function(){
    if(text.style.visibility=="visible"){
      text.style.visibility ="hidden";
    }else{
      text.style.visibility ="visible";
    }
  })
})