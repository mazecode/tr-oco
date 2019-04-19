document.addEventListener("DOMContentLoaded", function (event) {
    showTitle();
    sliderComponentPage();
});

document.querySelector('.nav-button').addEventListener("click", async () => {
    document.querySelector('body').classList.toggle('nav-open');
});

async function showTitle() {
    let title = $('.masthead .title');

    await setTimeout(() => {
        title.removeClass('d-none').addClass('animated zoomIn fast');
    }, 500);

    await setTimeout(() => {
        title.removeClass('animated zoomIn');
    }, 2000)
}

function sliderComponentPage() {
    let slider = $('.slider')

    slider.slick({
        slidesToShow: 3,
        slidesToScroll: 3,
        lazyLoad: 'ondemand',
        dots: true,
        arrows: true,
        adaptiveHeight: true,
        prevArrow: '#btnPrev',
        nextArrow: '#btnNext',
        mobileFirst: true,
        responsive: [
            {
                breakpoint: 1024,
                settings: {
                    adaptiveHeight: true,
                    slidesToShow: 3,
                    slidesToScroll: 3,
                    infinite: true
                }
            },
            {
                breakpoint: 600,
                settings: {
                    slidesToShow: 2,
                    slidesToScroll: 2
                }
            },
            {
                breakpoint: 480,
                settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1,
                    arrows: false,
                    adaptiveHeight: false
                }
            }
        ]
    });
    slider.slickLightbox({
        src: 'data-lightbox',
        itemSelector: '.slick-slide img',
        lazy: true
    });
}