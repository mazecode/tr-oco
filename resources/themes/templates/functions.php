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

// functions.php
if(get_theme_mod('campo_texto') != null) {
    dd(get_theme_mod('campo_texto'));
}

add_filter('tr_theme_options_name', function () {
    return 'oco-theme';
});

add_filter('wp_mail_from', function ($mail) {
    return 'info@ocodesign.es';
});

add_filter('wp_mail_from_name', function ($mail) {
    return 'OCO Design';
});

add_filter('deprecated_argument_trigger_error', function () {
    return false;
});

add_action('typerocket_loaded', function () {
    global $pagenow;

    if (
        tr_options_field('maintenance_mode')
        && $pagenow != 'wp-login.php'
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
        return;
    }

    if (is_post_type_archive('project')) {
        $loop->set('post_type', 'project');
        $loop->set('posts_per_page', 2);
        return;
    }

    if (is_post_type_archive('product')) {
        $loop->set('post_type', 'product');
        $loop->set('posts_per_page', 20);
        return;
    }

    if (is_home()) {
        // $loop->queried_object->set('post_type', 'project');
        $loop->set('posts_per_page', 20);
        $loop->set('post_type', 'product');
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

// LIBS
require_once 'libs/bs4navwalker.php';
require_once 'libs/bs4navFullScreenWalker.php';

// BASE SETTINGS
require_once 'inc/_theme.php'; // Theme Dashboard
require_once 'inc/_admin.php'; // Admin Dashboard
require_once 'inc/_projects.php'; // Projects
require_once 'inc/_products.php'; // Products
require_once 'inc/_assets.php'; // Assets Admin|Theme


// Include Woocommerce Customisations
if (class_exists('WooCommerce')) {
    require_once 'inc/woocommerce/woocommerce.php';
}
