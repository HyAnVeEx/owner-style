$(function() {
  var flag = false;
  var pagetop = $('.sticky');
  $(window).scroll(function () {
    if ($(this).scrollTop() > 60) {
      if (flag == false) {
        flag = true;
        pagetop.stop().animate({
          'top': '60px'
        }, 200);
      }
    } else {
      if (flag) {
        flag = false;
        pagetop.stop().animate({
          'top': '0'
        }, 200);
      }
    }
  });
});
