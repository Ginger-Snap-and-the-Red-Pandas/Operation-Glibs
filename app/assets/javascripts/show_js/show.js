var showPage;

$(document).ready(function(){
  grabFirstScene();
  grabNextScene();
  grabPreviousScene();
  showPage();
})


var grabFirstScene = function(){
  $('#first-scene-button').on("click", renderNextScene);
}

var grabNextScene = function(){
  $('#show-act').on("click", '#next-button', renderNextScene);
}

var grabPreviousScene = function(){
  $('#show-act').on("click", '#previous-button', renderNextScene);
}

var renderNextScene = function(event){
  event.preventDefault();
  console.log("First hotdoggo scene");
  var $button = $(this);
  var url = $button.attr('href');
  console.log(url);
  $.ajax({
    method: "GET",
    url: url
  }).done(function(response){
    console.log("Hi five, bro!");
    console.log(response);
    $("#show-act").html(response);
  })
}

showPage = function(){
  console.log("hot doggo");
}