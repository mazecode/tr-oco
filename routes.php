<?php

tr_route()->get('/test', function () {
    dd('testing');
});

tr_route()->get('/', function () {
    dd('home /');
});
tr_route()->get('/project/all', 'index@Project');

tr_route()->post('/contact/send', 'send@Contact');
tr_route()->get('/contact/thanks', 'thanks@Contact');

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
