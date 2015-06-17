$(document).ready(function() {
  addContactFormListener();
  addNewContactListener();
});

var addContactFormListener = function(){
  $('#add-new').on('click', '#add-new-btn', function(e){
    e.preventDefault();
    $('#add-new-btn').toggle();
    $('.new-contact-form').toggle();
  })
};
var addNewContactListener = function(){
  $('#add-new').on('click', '#add-contact-btn', function(e){
    e.preventDefault();

    var action = $('.new-contact-form').attr('action');

    var method = $('.new-contact-form').attr('method');

    var data   = $('.new-contact-form').serialize();

  var request = $.ajax({
    url: action,
    type: method,
    data: data,
    dataType: 'JSON'
  });

  request.done(function(response){
    $("tbody").append("<tr>"+ response +"</tr>")
    console.log("Success")
  })

  request.fail(function(response){
    console.log(response)
    console.log("Fail")
  })

  })
};
