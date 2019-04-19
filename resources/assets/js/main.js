jQuery(document).ready($ => {
  $('.woocommerce-review-link').on('click', e => {
    e.preventDefault();

    const anchorToScroll = $('.woocommerce-tabs');
    const scrollToPoint = $(anchorToScroll).offset().top;

    $('body').animate({
      scrollTop: scrollToPoint - 60,
    });
  });

});

function animateCSS(element, animationName, callback) {
  const node = document.querySelector(element)
  node.classList.add('animated', animationName)

  function handleAnimationEnd() {
    node.classList.remove('animated', animationName)
    node.removeEventListener('animationend', handleAnimationEnd)

    if (typeof callback === 'function') callback()
  }

  node.addEventListener('animationend', handleAnimationEnd)
}
