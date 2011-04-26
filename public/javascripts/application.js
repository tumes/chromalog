$(document).ready(function() {
  
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