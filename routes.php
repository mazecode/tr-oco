<?php

tr_route()->get()->match('test')->do(function () {
    dd('testing');
});

// tr_route()->get()->match('/')->do(function () {
//     dd('home /');
// });

tr_route()->get()->match('/project/all')->do('index@Project');

tr_route()->get()->match('contact')->do(function(){
    return tr_view('contacts.form');
});
tr_route()->post()->match('/contact/send', 'send@Contact');
tr_route()->get()->match('/contact/thanks', 'thanks@Contact');

/**
 * Maintenance Mode
 */
if (!tr_options_field('maintenance_mode') && php_sapi_name() !== 'cli' && $_SERVER['SERVER_ADDR'] != '192.168.10.10') {
    tr_route()->get('/', function () {
        return tr_redirect()->toURL('/maintenance')->now();
    });

    tr_route()->get('/maintenance', function () {
        dd('here');

        if (!tr_options_field('maintenance_mode')) {
            return tr_redirect()->toURL(home_url('/'))->now();
        }
        return tr_view('maintenance');
    });
}
