$(document).ready(function () {
 $(".slider-q").click(function (e) { 
   e.preventDefault();
   $(".slider-toggle").slideToggle();
 });
 $(".slider-q1").click(function (e) { 
  e.preventDefault();
  $(".slider-toggle1").slideToggle();
});
$(".slider-q2").click(function (e) { 
  e.preventDefault();
  $(".slider-toggle2").slideToggle();
});
$(".slider-q3").click(function (e) { 
  e.preventDefault();
  $(".slider-toggle3").slideToggle();
});
$(".slider-q4").click(function (e) { 
  e.preventDefault();
  $(".slider-toggle4").slideToggle();
});

$(".hitech").click(function (e) { 
    e.preventDefault();
    $(".th").slideToggle();
    
});
$(".DBiet").click(function (e) { 
    e.preventDefault();
    $(".DB").slideToggle();
    
});
$(".Loaimay").click(function (e) { 
    e.preventDefault();
    $(".lm").slideToggle();
    
});
$(".chatlieu").click(function (e) { 
    e.preventDefault();
    $(".cl").slideToggle();
    
});
$(".mausac").click(function (e) { 
    e.preventDefault();
    $(".ms").slideToggle();
    
});
$(".khoanggia").click(function (e) { 
    e.preventDefault();
    $(".kg").slideToggle();
    
});
$(".vanchuyen").click(function (e) { 
    e.preventDefault();
    $(".vc").slideToggle();
    
});
$(".owl-carousel").owlCarousel({

    items :1, //items: 3==> màn hình sẽ hiện 3 tấm hình.
   margin :10,// Mặc định là margin-right. K/cách giữa các tấm hình
   loop : true,// Vòng lặp
   autoplay: true,//Tự độngcác hình ảnh
   autoplayTimeout: 4000, //Thời gian chuyển đổi từ hình này sang hình khác
   nav: true,// Mũi tên next
   navText:['<i class="fa fa-angle-left"></i>','<i class="fa fa-angle-right"></i>'],
   navSpeed: 3000,//Xét tốc độ ch chạy 
});
});