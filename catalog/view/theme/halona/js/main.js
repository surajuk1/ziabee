$(document).ready(function(){

//Slick Js
    $('.fTileSlide').slick({
        slidesToShow: 3,
        infinite: true,
        variableWidth: true,
        lazyLoad: 'ondemand',
        slidesToScroll: 1,
        autoplay: true,
        autoplaySpeed: 2000,
        nextArrow: '<a herf="" class="slick-next slick-arrow"><i class="material-icons">&#xE315;</i></a>', 
        prevArrow: '<a herf="" class="slick-prev slick-arrow"><i class="material-icons">&#xE314;</i></a>',
        responsive: [
        {
            breakpoint: 768,
            settings: {
                slidesToShow: 2,
                slidesToScroll: 1
            }
        },
        {
            breakpoint: 480,
            settings: {
                slidesToShow: 1,
                slidesToScroll: 1
            }
        }]
    });

    $('.testimonialList').slick({
        slidesToShow: 1,
        lazyLoad: 'ondemand',
        slidesToScroll: 1,
        autoplay: true,
        autoplaySpeed: 2000,
        nextArrow: '<a herf="" class="slick-next slick-arrow"><i class="material-icons">&#xE315;</i></a>', 
        prevArrow: '<a herf="" class="slick-prev slick-arrow"><i class="material-icons">&#xE314;</i></a>'
    });

//
$('.pdList').slick({
    centerMode: true,
    centerPadding: '138px',
    slidesToShow: 1,
    nextArrow: '<a herf="" class="slick-next slick-arrow"><i class="material-icons">&#xE315;</i></a>', 
    prevArrow: '<a herf="" class="slick-prev slick-arrow"><i class="material-icons">&#xE314;</i></a>',
    responsive: [
        {
            breakpoint: 768,
            settings: {
                centerMode: false,
                slidesToShow: 1,
                slidesToScroll: 1
            }
        }]
  });

$('.sd_list').slick({
    slidesToShow: 1,
    lazyLoad: 'ondemand',
    slidesToScroll: 1,
    autoplay: false,
    autoplaySpeed: 2000,
    nextArrow: '<a herf="" class="slick-next slick-arrow"><i class="material-icons">&#xE315;</i></a>', 
    prevArrow: '<a herf="" class="slick-prev slick-arrow"><i class="material-icons">&#xE314;</i></a>'
});

$('.slick-slideshow').slick({
    slidesToShow: 1,
    lazyLoad: 'ondemand',
    slidesToScroll: 1,
    autoplay: true,
    infinite: true,
    variableWidth: false,
    autoplaySpeed: 6000,
    nextArrow: '<a herf="" class="slick-next slick-arrow"><i class="material-icons">&#xE315;</i></a>', 
    prevArrow: '<a herf="" class="slick-prev slick-arrow"><i class="material-icons">&#xE314;</i></a>'
});

//
$('.user_btn').click(function(){
    if($(this).hasClass('active')){
        $(this).removeClass('active').find('i').text('person');
        $('.slideOver').removeClass('active');
    }
    else{
        $(this).addClass('active').find('i').text('close');
        $('.slideOver').addClass('active');
    }
});




if ($('#back-to-top').length) {
    var scrollTrigger = 100, // px
        backToTop = function () {
            var scrollTop = $(window).scrollTop();
            if (scrollTop > scrollTrigger) {
                $('#back-to-top').addClass('show');
            } else {
                $('#back-to-top').removeClass('show');
            }
        };
    backToTop();
    $(window).on('scroll', function () {
        backToTop();
    });
    $('#back-to-top').on('click', function (e) {
        e.preventDefault();
        $('html,body').animate({
            scrollTop: 0
        }, 700);
    });
}


  }); // End $(document).ready();