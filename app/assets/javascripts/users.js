

$(document).ready(function(){
  $('.unfinished').on('click', function (e) {
    var listItem = this.parentNode;
    var actTitle = listItem.children[1].innerHTML;
    $(listItem).hide();
    $(".empty-blurb").hide();
    $(".acts-finished-list").append("<li class='acts-finished-title'>" + "<span class='glyphicon glyphicon-ok'>" + "   " + actTitle + "</li>")
  });

  $('.unfinished-service').on('click', function (e) {
    var serviceItem = this.parentNode;
    var serviceTitle = serviceItem.children[1].innerHTML;
    $(serviceItem).hide();
    $(".service-comp-empty").hide();
    $(".services-finished-list").append("<li class='services-finished-title'>" + "<span class='glyphicon glyphicon-ok'>" + " " + serviceTitle + "</li>")
  });
});
