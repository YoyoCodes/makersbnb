"use strict";
$(document).ready(function(){
  $('#sign up').one('click', function(){
    let email = $('#email').val();
    let password = $('#password').val();
    let username = $('#username').val();

    let xhr = $.post('/signup', {
      email: email,
      password: password,
      username: username
    });

    xhr.done(function(signup){
      $('#response').append(
        "You have successfully signed up," + signup.username
      );
    });
  });
});
