<?php
/*
|--------------------------------------------------------------------------
| TypeRocket Templates
|--------------------------------------------------------------------------
|
| When developing make sure all public assets are located in a public
| location like the /wordpress/assets directory. Use the gulpfile.js
| to compile css and js to assets.
|
| Happy themes!
|
 */

add_filter('deprecated_argument_trigger_error', function () {
    return false;
});

add_action('typerocket_loaded', function () {
    global $pagenow;

    if (tr_options_field('maintenance_mode')
        && $pagenow !== 'wp-login.php'
        && preg_match('(maintenance)', htmlspecialchars($_SERVER['REQUEST_URI'])) == 0
        && !current_user_can('manage_options')
        && !is_admin()
        && !isset($_POST)
    ) {
        return tr_redirect()->toURL(home_url('/maintenance'))->now();
    }
});

add_filter('tr_rest_api_load', function ($load, $resource, $itemId) {
    return $load;
}, 10, 3);



function woocommerce_support()
{
    add_theme_support('woocommerce');
}
add_action('after_setup_theme', 'woocommerce_support');


add_action('pre_get_posts', function ($loop) {
    if (is_admin() || !$loop->is_main_query()) {
        // do nothing if in the admin or not in the main loop
        return;
    }

    if (is_home()) {
        // $loop->queried_object->set('post_type', 'project');
        $loop->set('posts_per_page', 15);
        $loop->set('post_type', 'project');
        // d($loop);
        return;
    }

    if (is_post_type_archive('project')) {
        // Show 20 posts for the custom post type 'team'
        $loop->set('posts_per_page', 20);
        return;
    }

}, 1);

add_filter('body_class', function ($classes) {
    $id = get_current_blog_id();
    $slug = strtolower(str_replace(' ', '-', trim(get_bloginfo('name'))));

    $classes[] = $slug;
    $classes[] = 'site-id-' . $id;

    if (preg_match('(maintenance)', htmlspecialchars(trim($_SERVER["REQUEST_URI"], '/'))) == 1) {
        $classes[] = 'maintenance-mode';
    }

    if (preg_match('(maintenance)', htmlspecialchars(trim($_SERVER["REQUEST_URI"], '/'))) == 1) {
        $classes[] = 'maintenance-mode';
    }

    // if (is_woocommerce()) {
    //     $classes[] = 'shop';
    //     $classes[] = 'ocodesign-shop';
    // }

    if (is_front_page()) {
        $classes[] = 'font-end';
        $classes[] = 'ocodesign-front';
    }

    if (is_page_template('page-halfhalf.php')) {
        $classes[] = 'halfhalf-page';
    }

    return $classes;

});


// Admin Dashboard
$dash = tr_meta_box('Maintenance')->addScreen('dashboard')
    ->setCallback(function () {
        $form = tr_form('option');
        $form->useJson()->useAjax();
        echo $form->open();
        echo $form->radio('Maintenance mode')->setOptions(['ON' => '1', 'OFF' => '0'])->setSetting('default', '0');
        echo $form->close('Save');
    });

// Projects
require_once 'inc/_projects.php';

// Products
require_once 'inc/_products.php';

// Assets Admin|Theme
require_once 'inc/_assets.php';

require_once 'inc/settings/theme-options.php';
require_once 'inc/settings/social.php';
require_once 'inc/settings/taxonomies.php';
require_once 'inc/settings/post-types.php';
require_once 'inc/settings/nav-menus.php';
require_once 'inc/settings/widgets.php';
require_once 'inc/settings/image-sizes.php';
require_once 'inc/settings/other/site_opts.php';

// Include Woocommerce Customisations
if (class_exists('WooCommerce')) {
    require_once 'inc/woocommerce/woocommerce.php';
}


/** */

add_filter('wp_mail_from', 'new_mail_from');
add_filter('wp_mail_from_name', 'new_mail_from_name');
function new_mail_from($mail)
{
    return 'info@ocodesign.es';
}
function new_mail_from_name($mail)
{
    return 'OCO Design';
}
