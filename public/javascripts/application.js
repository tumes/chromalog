$(document).ready(function() {
  
  var $curr = $("#level0");
  var $next = $curr.next();
  
  $('a#next').click( function() {
    $curr.slideToggle();
    $next.slideToggle();
    $curr = $curr.next();
    $next = $curr.next();
    $prev = $curr.prev();
  });
    
  $('a#back').click( function() {
    var $back = $curr.prev();
    $curr.slideToggle();
    $back.slideToggle();
    $curr = $curr.prev();
    $next = $curr.next();
    $back = $curr.prev();
  });
    
});