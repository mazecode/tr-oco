<?php

/**
 * Maintenance Mode
 */
if (!tr_options_field('maintenance_mode') && php_sapi_name() !== 'cli' && $_SERVER['SERVER_ADDR'] != '192.168.10.10') {
    tr_route()->get('/', function () {
        return tr_redirect()->toURL('/maintenance')->now();
    });

    tr_route()->get('/maintenance', function () {
        if (!tr_options_field('maintenance_mode')) {
            return tr_redirect()->toURL(home_url('/'))->now();
        }

        return tr_view('maintenance');
    });
}

// Projects Page
tr_route()->get()->match('project/all')->do('index@Project');

// Contact Page - Main 
tr_route()->get()->match('contact')->do(function () {
    return tr_view('contacts.index');
});
tr_route()->post()->match('contact/mail')->do('sendmail@Contact');

// Maintenance Mode- Contact Form
tr_route()->post()->match('contact/send')->do('send@Contact');
tr_route()->get()->match('contact/thanks')->do('thanks@Contact');
