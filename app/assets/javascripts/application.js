//= require jquery
//= require jquery_ujs
//= require zeroclipboard
//= require handlebars.runtime


var auto_logoff_time = 300;
var remaining_seconds = auto_logoff_time+1;

function auto_logoff() {
  if (remaining_seconds <= 1) {
    window.location="/login/logout";
    return;
  }

  remaining_seconds -= 1;
  $('#countdown').html(humanize(remaining_seconds));
  setTimeout("auto_logoff()",1000);
}

/**
 * Make seconds human readable.
 */
function humanize(seconds){
  if(seconds > 60) {
  	return Math.ceil(seconds / 60) + "m";
  } else {
  	return seconds + "s"
  }
}

$(document).ready(function(){
  auto_logoff();
});

// Event.observe(window, 'load', auto_logoff, false);



// Password hidden

$(document).ready(function(){

  $( ".select-click" ).on( "click", function(e) {
    if (e.target.tagName === 'INPUT') {
      return e.target.select();
    }
  });
});
