// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require rails-ujs

// require geocomplete
//= require jquery.geocomplete
//= require turbolinks
//= require bootstrap-sprockets
//= require bootstrap
//= require toastr
//= require rails.validations
//= require cookies_eu
//= require google_analytics


// require_tree .


// For Geocomplete
$(document).on('turbolinks:load', function(){
	$("#autocomplete_address").geocomplete();  // Option 1: Call on element.
	
});

$(document).on('turbolinks:load', function(){
	$( '.profile-sidebar-content-first .nav  a' ).on( 'click', function () {
		$( '.profile-sidebar-content-first .nav' ).find( 'li.active' ).removeClass( 'active' );
		$( this ).parent( 'li' ).addClass( 'active' );
	});
});



$(document).on('turbolinks:load', function(){
    $('#btn-upload').click(function(e){
        e.preventDefault();
        $('#profile-image-upload').click();
    }
    );
});

$(document).on('turbolinks:load', function(){
    $('#profile-image-upload').on('change', function(event) {
      var files = event.target.files;
      var image = files[0]
      var reader = new FileReader();
      reader.onload = function(file) {
        var img = new Image();
        console.log(file);
        img.src = file.target.result;
        $('#profile-image-preview').html(img);
      }
      reader.readAsDataURL(image);
      console.log(files);
    });
  });
