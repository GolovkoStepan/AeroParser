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
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require jquery3
//= require popper
//= require bootstrap-sprockets
//= require_tree .

// Search JS code
document.addEventListener("turbolinks:load", function() {
    $(function () {
        $('input[type="text"]').keyup(function () {
            let searchText = $(this).val();

            $('ul > li').each(function () {
                let currentLiText = $(this).text().toLowerCase(),
                    showCurrentLi = currentLiText.indexOf(searchText.toLowerCase()) !== -1;

                $(this).toggle(showCurrentLi);
            });
        });
    });
});