

$(document).ready(function(){
  $('.unfinished').on('click', function (e) {
    var listItem = this.parentNode;
    var actTitle = listItem.children[0].innerHTML;
    $(listItem).hide();
    $(".acts-finished-list").append("<li class='acts-finished-title'>" + actTitle + "</li>")
  });
});

$(document).ready(function(){
  $('.unfinished-service').on('click', function (e) {
    var serviceItem = this.parentNode;
    var serviceTitle = serviceItem.children[0].innerHTML;
    $(serviceItem).hide();
    $(".services-finished-list").append("<li class='services-finished-title'>" + serviceTitle + "</li>")
  });
});
