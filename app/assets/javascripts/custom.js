$(document).ready(function(){


  /*
  * Handle menu
  */
  $(".submenu > a").click(function(e) {
    e.preventDefault();
    var $li = $(this).parent("li");
    var $ul = $(this).next("ul");

    if($li.hasClass("open")) {
      $ul.slideUp(350);
      $li.removeClass("open");
    } else {
      $(".nav > li > ul").slideUp(350);
      $(".nav > li").removeClass("open");
      $ul.slideDown(350);
      $li.addClass("open");
    }
  });

  /*
  * Handle date picker
  */
  $('.datepicker').datepicker({dateFormat: "dd-mm-yy"});

  /*
  * Hanlde select2
  */
  $( ".select2-input" ).select2({
    theme: "bootstrap"
  });

});
