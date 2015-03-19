

$(document).ready(function(){
  $('.unfinished').on('click', function (e) {
    var listItem = this.parentNode;
    var actTitle = listItem.children[0].innerHTML;
    $(listItem).hide();
    $(".acts-finished-list").append("<li class='acts-finished-title'>" + actTitle + "</li>")


     // $(this).appendTo('acts-finished-list');
  });
});
