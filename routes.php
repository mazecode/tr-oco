<?php
/*
|--------------------------------------------------------------------------
| TypeRocket Routes
|--------------------------------------------------------------------------
|
| Manage your web routes here.
|
*/
if (!tr_options_field('maintenance_mode') && $_SERVER['SERVER_ADDR'] != '192.168.10.10') {
    tr_route()->get('/', function () {
        return tr_redirect()->toURL('/maintenance')->now();
    });
}

tr_route()->get('/maintenance', function () {
    if (!tr_options_field('maintenance_mode')) {
        return tr_redirect()->toURL(home_url('/'))->now();
    }
    return tr_view('maintenance');
});

tr_route()->post('/contact/send', 'send@Contact');
tr_route()->get('/contact/thanks', 'thanks@Contact');
