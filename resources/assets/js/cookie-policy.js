jQuery(document).ready($ => {
  if ($('.cp').length > 0) {
    function getCookie(cname) {
      const name = `${cname}=`;
      const decodedCookie = decodeURIComponent(document.cookie);
      const ca = decodedCookie.split(';');

      for (let i = 0; i < ca.length; i++) {
        let c = ca[i];
        while (c.charAt(0) == ' ') {
          c = c.substring(1);
        }
        if (c.indexOf(name) == 0) {
          return c.substring(name.length, c.length);
        }
      }
      return '';
    }

    let classSet = $('.cp')
        .attr('class')
        .split(' '),
      cp_status = getCookie('cookie_policy');

    if (cp_status !== '1') {
      if ($.inArray('cp-top', classSet) === 1) {
        $('.cp').show(400);
      } else {
        $('.cp').show(400);
      }
    }

    $('.cp .cp-accept').on('click', e => {
      e.preventDefault();
      document.cookie = 'cookie_policy=1';
      $('.cp').hide(400);
    });

    $('.cp .cp-decline').on('click', e => {
      e.preventDefault();
      window.history.go(-1);
    });
  }
});
