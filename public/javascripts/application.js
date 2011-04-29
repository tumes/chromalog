$(document).ready(function() {
  
  // AJAX and slide in edit window
  var first_run = true
  $("span.editlink a").live( 'click', function() {
    var edit_url = $(this).attr("href");
    if(first_run) {
      $(".main-content.grid_2.alpha").animate({
        width: "0%"
      }, 200, function() {
        $(this).remove();
      });
      $(".main-content.grid_4").addClass("alpha");
      var new_div = $(".main-content.grid_2").removeClass('grid_2 omega').addClass('grid_4 omega');
      $.get(edit_url + ".js", function(data) {
        new_div.html("<header><h2>Edit Instrument</h2></header><section class='clearfix' id='ajaxed_in'>" + data + "</section>").toggle().slideDown(200);
      });
      first_run = false
    } else {
      $("section#ajaxed_in").slideUp('fast', function() {
        $.get(edit_url + ".js", function(data) {
          $("section#ajaxed_in").html(data).slideDown(200);
        });
      });
    };
    return false
  });
  
  // Fade out flash messages
  setTimeout(function() {
    $("div.message").fadeOut('slow', function(){
      $(this).remove();
    });
  }, 2000);
  
  // AJAX in intro-dependent form and tabulate form
  $(".ajaxy_intro form").live("submit", function(){
    var queryString = $(this).serialize();
    var url = $(this).attr("action");
    $.get(url+"?"+queryString, function(data) {
      $(".ajaxy_intro").slideUp('fast', function() {
        $(".ajaxy_form").html(data);
        
        var $curr = $("#level:first");
        var $next = $curr.next();
        $curr.nextAll().addClass('display-none')

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
        $(".ajaxy_form").slideDown();
      });
    });
    return false;
  });
  
  // Dynamic selects
  $("p .dynamic_select").change(function(){
    var next_select = $(this).parent().next().children('select');
    var next_select_id = $(next_select).attr('id');
    var next_select_options = $(next_select).children('option')
    var id_value_string = $(this).val();
    if (id_value_string == "") { 
      // if the id is empty remove all the sub_selection options from being selectable and do not do any ajax
      $(next_select_options).remove();
      var row = "<option value=\"" + "" + "\">" + "" + "</option>";
      $(row).appendTo(next_select);
    }
    else {
      // Send the request and update sub category dropdown 
      $.ajax({
        dataType: "json",
        cache: false,
        // This queries the controller directly for associated objects to populate the dynamic select
        url: '/' + next_select_id + 's/' + id_value_string,
        timeout: 2000,
        error: function(XMLHttpRequest, errorTextStatus, error){
            alert("Failed to submit : "+ errorTextStatus+" ;"+error);
        },
        success: function(data){    
          // Clear all options from sub category select 
          $(next_select_options).remove();
          //put in a empty default line
          var row = "<option value=\"" + "" + "\">" + "Select one" + "</option>";
          $(row).appendTo(next_select);  
          // Fill sub category select 
          $.each(data, function(i, j){
            row = "<option value=\"" + j[next_select_id]["id"] + "\">" + j[next_select_id]["name"] + "</option>";   
            $(row).appendTo(next_select);                     
          });             
         }
      });
    };
  });            
});