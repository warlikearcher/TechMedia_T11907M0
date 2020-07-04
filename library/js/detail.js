
<script src="library/js/jquery-3.3.1.min.js"></script>
<script src="library/js/jquery.cycle.js"></script>
<script src="library/js/owl.carousel.min.js"></script>
<script src="library/js/smoothproducts.min.js"></script>
<script>
    $("#sliderShuffle").cycle({
        next: '#next',
        prev: '#prev'
    });

    $('.owl-carousel').owlCarousel({
        items: 4,
        loop: true,
        margin: 15,
        autoplay: true,
        autoplayTimeout: 3000,
        nav: true,
        responsiveClass: true,
        responsive: {
            0: {
                items: 1,
                nav: true
            },
            600: {
                items: 3,
                nav: true
            },
            1000: {
                items: 4,
                nav: true
            }
        }

    });

    $(function () {
        $(".topbar ul li").click(function () {
            $(".topbar ul li").not(this).find("ul").slideUp();
            $(this).find("ul").slideToggle();
        });
        $(".topbar ul li ul li, productCategories ul li .megamenu").click(function (e) {
            e.stopPropagation();
        });
        $(".productCategories ul li").click(function () {
            $(".productCategories ul li").not(this).find(".megamenu").hide();
            $(this).find(".megamenu").toggle();
        });
        $(".otherInfoBody").hide();
        $(".otherInfoHandle").click(function () {
            $(".otherInfoBody").slideToggle();
        });
        $(".signBtn").click(function () {
            $("body").css("overflow", "hidden");
            $(".loginBox").slideDown();
        });
        $(".closeBtn").click(function () {
            $("body").css("overflow", "visible");
            $(".loginBox").slideUp();
        });

        $(".sp-wrap").smoothproducts();
    });
</script>