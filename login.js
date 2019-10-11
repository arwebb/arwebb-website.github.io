/* Introductory text fadein and text box autofocus */
$(document).ready(function () {
  $("#recognized").hide();
  $("#unrecognized").hide();
  $("#welcome").hide().fadeIn(0);
  $("#verify").hide().delay(1000).fadeIn(0);
  $("#view-menu").hide().delay(2000).fadeIn(0);
  $("#menu").hide().delay(2100).fadeIn(0);
  $("#order").hide().delay(7000).fadeIn(0);
  $("#heart").hide().delay(9000).fadeIn(0);
});

function enter(e) {
  if(event.key === "Enter" || e.keyCode === 13){
    var valueEntered = e.value.toUpperCase();

    // INPUT START
    if (valueEntered === "HARRY WEBB" || valueEntered === "HENRY WEBB" || valueEntered === "HARRY L WEBB" || valueEntered === "HARRY LINDO WEBB" || valueEntered === "HENRY LINDO WEBB" || valueEntered === "HENRY L WEBB"){
      $("#unrecognized").fadeOut(200);
      setTimeout(function(){$("#recognized").fadeIn(200);}, 250);
      setTimeout(function(){window.location.href = "happy-birthday.html";}, 2700);
    }
    // INPUT END

    else {
      setTimeout(function(){$("#unrecognized").fadeIn(200);}, 250);
    }
  }
}
