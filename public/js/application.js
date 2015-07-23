$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()

  $("#main-welcome-box").on("click", "#new-user-button", function(event){
    event.preventDefault();

    var requestUrl = $(this).attr("href");
      var request = $.ajax({
        url: requestUrl
      });

    request.done(function(response){
      $("#drop-down-box").html(response)
    });

  });


  $("#main-welcome-box").on("click", "#login-user-button", function(event){
    console.log('clicked user login');
    event.preventDefault();

    var requestUrl = $(this).attr("href");
      var request = $.ajax({
        url: requestUrl
      });

    request.done(function(response){
      $("#drop-down-box").html(response)
    });

  });








//   var requestUrl = $(this).attr("href");
//     var reqeust = $.ajax({
//       url: requestUrl
//     });
//     request.done(function(response){
//       console.log(response);
//     });









});
