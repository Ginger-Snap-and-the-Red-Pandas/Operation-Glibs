var showPage;

$(document).ready(function(){
  grabFirstScene();
  showPage();
})


var grabFirstScene = function(){
  $('#first-scene-button').on("click", function(event){
    event.preventDefault();
    console.log("First hotdoggo scene");
  })
}

showPage = function(){
  console.log("hot doggo");
}