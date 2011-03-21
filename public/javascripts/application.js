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
  $("select#instrument").change(function(){
    var id_value_string = $(this).val();
    if (id_value_string == "") { 
      // if the id is empty remove all the sub_selection options from being selectable and do not do any ajax
      $("select#instrument option").remove();
      var row = "<option value=\"" + "" + "\">" + "" + "</option>";
      $(row).appendTo("select#instrument");
    }
    else {
      // Send the request and update sub category dropdown 
      $.ajax({
        dataType: "json",
        cache: false,
        url: '/run_logs/for_analytical_method_id/' + id_value_string,
        timeout: 2000,
        error: function(XMLHttpRequest, errorTextStatus, error){
            alert("Failed to submit : "+ errorTextStatus+" ;"+error);
        },
        success: function(data){                    
          // Clear all options from sub category select 
          $("select#method option").remove();
          //put in a empty default line
          var row = "<option value=\"" + "" + "\">" + "" + "</option>";
          $(row).appendTo("select#method");                        
          // Fill sub category select 
          $.each(data, function(i, j){
            row = "<option value=\"" + j.analytical_method.id + "\">" + j.analytical_method.name + "</option>";   
            $(row).appendTo("select#method");                     
          });             
         }
      });
    };
  });
                  

                  
});