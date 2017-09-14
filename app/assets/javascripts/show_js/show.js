var showPage;
var grabFirstScene;
var grabNextScene;
var grabPreviousScene;
var renderScene;
var renderFirstScene;
var removeCurtainRise;

$(document).ready(function(){
  grabFirstScene();
  grabNextScene();
  grabPreviousScene();
})

grabFirstScene = function(){
  $('#first-scene-button').on("click", renderFirstScene);
}

grabNextScene = function(){
  $('#show-act').on("click", '#next-button', renderScene);
}

grabPreviousScene = function(){
  $('#show-act').on("click", '#previous-button', renderScene);
}

renderScene = function(event){
  event.preventDefault();
  var url = $(this).attr('href');
  $.ajax({
    method: "GET",
    url: url
  }).done(function(response){
    $("#show-act").html(response);
    removeCurtainRise();
  })
}

renderFirstScene = function(event){
  event.preventDefault();
  var url = $(this).attr('href');
  $.ajax({
    method: "GET",
    url: url
  }).done(function(response){
    $("#show-act").html(response);
  })
}

showPage = function(){
  console.log("hot doggo");
}

removeCurtainRise = function(){
  var $curtainImage = $('#show-act').find('#rising-curtain');
  $($curtainImage).empty();
}
