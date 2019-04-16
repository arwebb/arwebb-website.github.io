/* Introductory text fadein and text box autofocus */
$(document).ready(function () {
  $("#welcome").hide().fadeIn(800);
  $("#banner").hide().delay(2000).fadeIn(800);
  $("#name").hide().delay(3000).fadeIn(800);
  $("#map").hide().delay(5000).fadeIn(800);
  $("#proceed").hide().delay(8300).fadeIn(800);
  $("#inputLine").hide().delay(8500).fadeIn(800);
  $("#help").hide().delay(8500).fadeIn(800);
}); 

/* Input box and response options */
function enter(e) {
  if(event.key === "Enter" || e.keyCode === 13){
    var valueEntered = e.value.toUpperCase();

    /* MOVEMENT START */
    /* EXIT */
    if (valueEntered === "EXIT" || valueEntered === "SOUTH" || valueEntered === "GO SOUTH" || valueEntered === "QUIT"){
      $("#contact-buttons").fadeOut(200);
      $("#resume").fadeOut(200);
      $("#response").fadeOut(200);
      setTimeout(function(){$("#response").text("You feel a gentle breeze on your face as you turn SOUTH towards the exit...").fadeIn(400);}, 250);
      setTimeout(function(){window.location.href = "index.html";}, 2700);
    }
    /* LIBRARY */
    else if (valueEntered === "NORTH" || valueEntered === "GO NORTH" || valueEntered === "GO TO LIBRARY" || valueEntered === "GO LIBRARY"){
      $("#contact-buttons").fadeOut(200);
      $("#resume").fadeOut(200);
      $("#response").fadeOut(200);
      setTimeout(function(){$("#response").text("As you move NORTH towards the library, the walls melt away and you feel yourself transported...").fadeIn(400);}, 250);
      setTimeout(function(){window.location.href = "http://github.com/arwebb";}, 2700);
    }
    /* TABLET */
    else if (valueEntered === "EAST" || valueEntered === "GO EAST" || valueEntered === "RESUME"){
      $("#contact-buttons").fadeOut(200);
      $("#response").fadeOut(200);
      setTimeout(function(){$("#response").text("As you move EAST towards the tablet, the text on the screen becomes clear. It is lightweight and compact enough to TAKE.").fadeIn(400);}, 250);
      $("#resume").delay(1600).fadeIn(400);

    }
    /* BUTTONS */
    else if (valueEntered === "WEST" || valueEntered === "GO WEST" || valueEntered === "CONTACT" || valueEntered === "CONTACT INFORMATION"){
      $("#resume").fadeOut(200);
      $("#response").fadeOut(200);
      setTimeout(function(){$("#response").text("You move WEST towards the buttons. As you approach, you begin to make out their details...").fadeIn(400);}, 250);
      $("#contact-buttons").delay(1600).fadeIn(400);
    }
    /* MOVEMENT END */

    /* INVESTIGATION START */
    /* NAME OR BANNER */
    else if (valueEntered === "ANNIE ROSE WEBB" || valueEntered === "LOOK ANNIE ROSE WEBB" || valueEntered === "BANNER" || valueEntered === "LOOK BANNER" || valueEntered === "LOOK AT BANNER" || valueEntered === "LOOK AT ANNIE ROSE WEBB" || valueEntered === "LOOK AROUND"){
      $("#contact-buttons").fadeOut(200);
      $("#resume").fadeOut(200);
      $("#response").fadeOut(200);
      setTimeout(function(){$("#response").text("You can make out a tiny paragraph below the bold banner text. It reads: \"Annie Rose Webb is the frontend developer, UX designer, and digital (and analog) adventure lover who made this site. To get in touch, type CONTACT or go WEST.\" No idea what that's all about.").fadeIn(400);}, 250);
    }
    /* TABLET */
    else if (valueEntered === "SMALL TABLET" || valueEntered === "TABLET" || valueEntered === "LOOK SMALL TABLET" || valueEntered === "LOOK AT SMALL TABLET" || valueEntered === "LOOK TABLET" || valueEntered === "LOOK AT TABLET" || valueEntered === "LOOK EAST"){
      $("#contact-buttons").fadeOut(200);
      $("#resume").fadeOut(200);
      $("#response").fadeOut(200);
      setTimeout(function(){$("#response").text("The darkened tablet activates as you move closer. It seems to contain a compact digital history of this room's creator. You think you could access the file by heading EAST.").fadeIn(400);}, 250);
    }
    /* BUTTONS */
    else if (valueEntered === "SERIES OF BUTTONS" || valueEntered === "BUTTONS" || valueEntered === "LOOK SERIES OF BUTTONS" || valueEntered === "LOOK AT SERIES OF BUTTONS" || valueEntered === "LOOK BUTTONS" || valueEntered === "LOOK AT BUTTONS" || valueEntered === "LOOK WEST"){
      $("#contact-buttons").fadeOut(200);
      $("#resume").fadeOut(200);
      $("#response").fadeOut(200);
      setTimeout(function(){$("#response").text("The buttons are glowing like the walls around them and emitting a low hum. On close investigation, they seem to contain digital addresses. Perhaps if you went WEST you could use them to contact someone?").fadeIn(400);}, 250);
    }
    /* LIBRARY */
    else if (valueEntered === "DIGITAL LIBRARY" || valueEntered === "LIBRARY" || valueEntered === "LOOK DIGITAL LIBRARY" || valueEntered === "LOOK AT DIGITAL LIBRARY" || valueEntered === "LOOK LIBRARY" || valueEntered === "LOOK AT LIBRARY" || valueEntered === "LOOK NORTH"){
      $("#contact-buttons").fadeOut(200);
      $("#resume").fadeOut(200);
      $("#response").fadeOut(200);
      setTimeout(function(){$("#response").text("The library contains rows of digital folders, each containing a number of files with names like \"INDEX.HTML\" and \"MAIN.JS\". Perhaps you could access the folders by heading NORTH?").fadeIn(400);}, 250);
    }
    /* EXIT */
    else if (valueEntered === "LOOK EXIT" || valueEntered === "LOOK AT EXIT" || valueEntered === "LOOK SOUTH"){
      $("#contact-buttons").fadeOut(200);
      $("#resume").fadeOut(200);
      $("#response").fadeOut(200);
      setTimeout(function(){$("#response").text("The exit leads out to a simple, open room. It feels somehow less... interactive than this one.").fadeIn(400);}, 250);
    }
    /* INVESTIGATION END */

    /* GENERAL OPTIONS START */
    else if (valueEntered === "OPTIONS"){
      $("#response").fadeOut(200);
      setTimeout(function(){$("#response").text("Tell me what you'd like to do and press 'Enter'. You can LOOK at any object in the room, GO any direction, or EXIT.").fadeIn(400);}, 250);
    }
    else if (valueEntered === "HELP"){
      $("#response").fadeOut(200);
      setTimeout(function(){$("#response").text("This is a personal website that imitates a text-based game. Type next to the arrow above and press ENTER to interact and explore. Try typing something like LOOK BUTTONS to look around; GO WEST to navigate; or EXIT to go to my non-interactable resume. (Or close this tab and never think about it again.)").fadeIn(400);}, 250);
    }
    else if (valueEntered === "GET YE FLASK" || valueEntered === "GET FLASK" || valueEntered === "TAKE FLASK"){
      $("#response").fadeOut(200);
      setTimeout(function(){$("#response").text("Ye cannot get ye flask.").fadeIn(400);}, 250);
    }
    else if (valueEntered === "TAKE BANNER"){
      $("#response").fadeOut(200);
      setTimeout(function(){$("#response").text("I can't imagine why you'd want that.").fadeIn(400);}, 250);
    }
    else if (valueEntered === "TAKE TABLET"){
      $("#response").fadeOut(200);
      setTimeout(function(){$("#response").text("Taken.").fadeIn(400);}, 250);
      setTimeout(function(){window.open("documents/resume-printable.pdf")}, 800);
    }
    else {
      $("#response").fadeOut(200);
      setTimeout(function(){$("#response").text("I'm sorry, I don't recognize that command.").fadeIn(400);}, 250);
    }
    /* GENERAL OPTIONS END */
  }
}

/* "How do you proceed?" button - triggers help text */
function helpText(){
  $("#response").fadeOut(200);
  setTimeout(function(){$("#response").text("Try LOOKing at any item, GOing any direction, or typing HELP for more information.").fadeIn(400);}, 250);
}
