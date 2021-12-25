/*	Table OF Contents
 ==========================
 Carousel
 Ajax Tab
 List view , Grid view  and compact view
 Global Plugins
 Customs Script
 responsive cat-collapse for homepage
 */


$(document).ready(function () {



    /*==================================
     Carousel
     ====================================*/

    // Featured Listings  carousel || HOME PAGE
    var owlitem = $(".item-carousel");

    owlitem.owlCarousel({
        //navigation : true, // Show next and prev buttons
        navigation: false,
        pagination: true,
        items: 5,
        itemsDesktopSmall: [979, 3],
        itemsTablet: [768, 3],
        itemsTabletSmall: [660, 2],
        itemsMobile: [400, 1]


    });

    // Custom Navigation Events
    $("#nextItem").click(function () {
        owlitem.trigger('owl.next');
    })
    $("#prevItem").click(function () {
        owlitem.trigger('owl.prev');
    })


    // Featured Listings  carousel || HOME PAGE
    var featuredListSlider = $(".featured-list-slider");

    featuredListSlider.owlCarousel({
        //navigation : true, // Show next and prev buttons
        navigation: false,
        pagination: false,
        items: 5,
        itemsDesktopSmall: [979, 3],
        itemsTablet: [768, 3],
        itemsTabletSmall: [660, 2],
        itemsMobile: [400, 1]


    });

    // Custom Navigation Events
    $(".featured-list-row .next").click(function () {
        featuredListSlider.trigger('owl.next');
    })
    $(".featured-list-row .prev").click(function () {
        featuredListSlider.trigger('owl.prev');
    })

    // Featured Listings  carousel || HOME PAGE
    var featuredListSlider2 = $(".featured-list-slider2");

    featuredListSlider2.owlCarousel({
        //navigation : true, // Show next and prev buttons
        navigation: false,
        pagination: false,
        items: 5,
        itemsDesktopSmall: [979, 3],
        itemsTablet: [768, 3],
        itemsTabletSmall: [660, 2],
        itemsMobile: [400, 1]


    });

    // Custom Navigation Events
    $(".featured-list-row2 .next").click(function () {
        featuredListSlider2.trigger('owl.next');
    })
    $(".featured-list-row2 .prev").click(function () {
        featuredListSlider2.trigger('owl.prev');
    })


    /*==================================
     Ajax Tab || CATEGORY PAGE
     ====================================*/


    $("#ajaxTabs li > a").click(function () {

        $("#allAds").empty().append("<div id='loading text-center'> <br> <img class='center-block' src='images/loading.gif' alt='Loading' /> <br> </div>");
        $("#ajaxTabs li").removeClass('active');
        $(this).parent('li').addClass('active');
        $.ajax({
            url: this.href, success: function (html) {
                $("#allAds").empty().append(html);
                $('.tooltipHere').tooltip('hide');
            }
        });
        return false;
    });

    urls = $('#ajaxTabs li:first-child a').attr("href");
    //alert(urls);
    $("#allAds").empty().append("<div id='loading text-center'> <br> <img class='center-block' src='images/loading.gif' alt='Loading' /> <br>  </div>");
    $.ajax({
        url: urls, success: function (html) {
            $("#allAds").empty().append(html);
            $('.tooltipHere').tooltip('hide');

            // default grid view class invoke into ajax content (product item)
            $(function () {
                $('.hasGridView .item-list').addClass('make-grid');
                $('.hasGridView .item-list').matchHeight();
                $.fn.matchHeight._apply('.hasGridView .item-list');
            });
        }
    });


    /*==================================
     List view clickable || CATEGORY
     ====================================*/

    // List view , Grid view  and compact view

    var listItem =   $('.item-list');
    var addDescBox =   $('.item-list .add-desc-box');
    var addsWrapper =   $('.adds-wrapper');

    $('.list-view,#ajaxTabs li a').click(function (e) { //use a class, since your ID gets mangled
        e.preventDefault();
        $('.grid-view,.compact-view').removeClass("active");
        $('.list-view').addClass("active");
        listItem.addClass("make-list"); //add the class to the clicked element
        listItem.removeClass("make-grid");
        listItem.removeClass("make-compact");


        if ($('.adds-wrapper').hasClass('property-list')) {
           addDescBox.removeClass("col-sm-9");
           addDescBox.addClass("col-sm-6");
        }else {
           addDescBox.removeClass("col-sm-9");
           addDescBox.addClass("col-sm-7");
        }


        $(function () {
            listItem.matchHeight('remove');
        });
    });

    $('.grid-view').click(function (e) { //use a class, since your ID gets mangled
        e.preventDefault();
        $('.list-view,.compact-view').removeClass("active");
        $(this).addClass("active");
        listItem.addClass("make-grid"); //add the class to the clicked element
        listItem.removeClass("make-list");
        listItem.removeClass("make-compact");


        if (addsWrapper.hasClass('property-list')) {
           //
            addDescBox.toggleClass("");
            addDescBox.addClass("no");

        } else {
           //
        }

        $(function () {
            listItem.matchHeight();
            $.fn.matchHeight._apply('.item-list');
        });

    });

    $(function () {
        $('.hasGridView .item-list').matchHeight();
        $.fn.matchHeight._apply('.hasGridView .item-list');
    });

    $(function () {
        $('.row-featured .f-category').matchHeight();
        $.fn.matchHeight._apply('.row-featured .f-category');
    });

    $(function () {
        $('.has-equal-div > div').matchHeight();
        $.fn.matchHeight._apply('.row-featured .f-category');
    });


    $('.compact-view').click(function (e) { //use a class, since your ID gets mangled
        e.preventDefault();
        $('.list-view,.grid-view').removeClass("active");
        $(this).addClass("active");
        listItem.addClass("make-compact"); //add the class to the clicked element
        listItem.removeClass("make-list");
        listItem.removeClass("make-grid");


        if (addsWrapper.hasClass('property-list')) {
           addDescBox.addClass("col-sm-9").removeClass('col-sm-6');
        } else {
           addDescBox.toggleClass("col-sm-9 col-sm-7");
           addDescBox.addClass("no");
        }

        $(function () {
            $('.adds-wrapper .item-list').matchHeight('remove');
        });


    });


    /*==================================
     Global Plugins ||
     ====================================*/

    $('.long-list').hideMaxListItems({
        'max': 8,
        'speed': 500,
        'moreText': 'View More ([COUNT])'
    });


    $('.long-list-user').hideMaxListItems({
        'max': 12,
        'speed': 500,
        'moreText': 'View More ([COUNT])'
    });


    $(function () {
        $('[data-toggle="tooltip"]').tooltip()
    })

    $(".scrollbar").scroller(); // custom scroll bar plugin

    $("select.selecter").selecter({ // custom scroll select plugin
        label: "Select An Item"
    });

    $(".selectpicker").selecter({ // category list Short by
        customClass: "select-short-by"
    });

    // smooth scroll to the ID
    $(document).on('click', 'a.scrollto', function(event){
        event.preventDefault();

        $('html, body').animate({
            scrollTop: $( $.attr(this, 'href') ).offset().top
        }, 500);
    });


    /*=======================================================================================
     cat-collapse Hmepage Category Responsive view
     ========================================================================================*/


    $(window).bind('resize load', function () {


        if ($(this).width() < 767) {

            $('.cat-collapse').collapse('hide');

            $('.cat-collapse').on('shown.bs.collapse', function () {
                $(this).prev('.cat-title').find('.icon-down-open-big').addClass("active-panel");
                //$(this).prev('.cat-title').find('.icon-down-open-big').toggleClass('icon-down-open-big icon-up-open-big');
            });

            $('.cat-collapse').on('hidden.bs.collapse', function () {
                $(this).prev('.cat-title').find('.icon-down-open-big').removeClass("active-panel");
            })

        } else {

            $('.cat-collapse').removeClass('out').addClass('in').css('height', 'auto');

        }

    });

    // DEMO PREVIEW

    $(".tbtn").click(function () {
        $('.themeControll').toggleClass('active')
    })

    // jobs

    $("input:radio").click(function () {
        if ($('input:radio#job-seeker:checked').length > 0) {
            $('.forJobSeeker').removeClass('hide');
            $('.forJobFinder').addClass('hide');
        } else {
            $('.forJobFinder').removeClass('hide');
            $('.forJobSeeker').addClass('hide')

        }

    })

    $(".filter-toggle").click(function () {
        $('.mobile-filter-sidebar').prepend("<div class='closeFilter'>X</div>");
        $(".mobile-filter-sidebar").animate({"left": "0"}, 250, "linear", function () {
        });
        $('.menu-overly-mask').addClass('is-visible');
    })

    $(".menu-overly-mask").click(function () {
        $(".mobile-filter-sidebar").animate({"left": "-251px"}, 250, "linear", function () {
        });
        $('.menu-overly-mask').removeClass('is-visible');
    })


    $(document).on('click', '.closeFilter', function () {
        $(".mobile-filter-sidebar").animate({"left": "-251px"}, 250, "linear", function () {
        });
        $('.menu-overly-mask').removeClass('is-visible');
    });


    // cityName will replace with selected location/area from location modal

    $('#selectRegion').on('shown.bs.modal', function (e) {
        // alert('Modal is successfully shown!');
        $("ul.list-link li a").click(function () {
            $('ul.list-link li a').removeClass('active');
            $(this).addClass('active');
            $(".cityName").text($(this).text());
            $('#selectRegion').modal('hide');
        });
    });


    //


    $("#checkAll").click(function () {
        $('.add-img-selector input:checkbox').not(this).prop('checked', this.checked);
    });


}); // end Ready


	
