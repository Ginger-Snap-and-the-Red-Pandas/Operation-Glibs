var showPage;

$(document).ready(function(){
  grabFirstScene();
  grabNextScene();
  grabPreviousScene();
})


var grabFirstScene = function(){
  $('#first-scene-button').on("click", renderNextScene);
  // releaseCurtain();
}

var grabNextScene = function(){
  releaseCurtain();
  $('#show-act').on("click", '#next-button', renderNextScene);

}

var grabPreviousScene = function(){
  $('#show-act').on("click", '#previous-button', renderNextScene);
}

var renderNextScene = function(event){
  event.preventDefault();
  var $button = $(this);
  var url = $button.attr('href');
  console.log(url);
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

var releaseCurtain = function(event){
  console.log('potato');
  $('#show-act').find('.curtain-front').removeClass('animated slideOutUp')
}
