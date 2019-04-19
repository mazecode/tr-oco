<?php

// add_custom_image_header();

add_theme_support('custom-logo');
add_theme_support('html5');
add_theme_support('custom-background');
add_theme_support('align-wide');
add_theme_support('dark-editor-style');
add_theme_support('responsive-embeds');
add_theme_support('post-thumbnails');

/**
 * Image Sizes
 */
add_image_size('full-width', 1200, 800, true);
add_image_size('post-thumbnail', 800, 650, true);
add_image_size('card', 600, 350, true);
add_image_size('prts', 1000, 500, true);
add_image_size('category-thumb', 300, 9999);
/**
 * Menu
 */
function register_menus()
{
    register_nav_menus(
        array(
            'top' => __('Top menu'),
            'main-menu' => __('Main Menu'),
            'footer-menu' => __('Footer Menu')
        )
    );
}
add_action('init', 'register_menus');

/**
 * Site Options
 */
// Allows robot indexing after dev database has been pushed
$live_url = 'http://localhost/'; // Must match WordPress live URL
if ($live_url != '') {
    if (get_bloginfo('siteurl') === $live_url) {
        if (get_option('blog_public') === 0) {
            update_option('blog_public', 1);
        }
    } else {
        if (get_option('blog_public') === 1) {
            update_option('blog_public', 0);
        }
    }
} else {
    if (get_option('blog_public') === 1) {
        update_option('blog_public', 0);
    }
    add_action('admin_notices', 'sample_admin_notice__error');
}

function sample_admin_notice__error()
{
    echo '<div class="notice notice-error"><p>Please insert the <strong>LIVE</strong> url into the <strong>$live_url</strong> variable into: <strong>inc/settings/other/site_opts.php</strong></p></div>';
}

function remove_admin_bar()
{
    if (!current_user_can('administrator') && !is_admin()) {
        show_admin_bar(false);
    }
}
// add_action('after_setup_theme', 'remove_admin_bar');
// add_filter('show_admin_bar', '__return_false');


// =========================================================================
// REMOVE JUNK FROM HEAD
// =========================================================================
remove_action('wp_head', 'rsd_link'); // remove really simple discovery link
remove_action('wp_head', 'wp_generator'); // remove wordpress version

remove_action('wp_head', 'feed_links', 2); // remove rss feed links (make sure you add them in yourself if youre using feedblitz or an rss service)
remove_action('wp_head', 'feed_links_extra', 3); // removes all extra rss feed links

remove_action('wp_head', 'index_rel_link'); // remove link to index page
remove_action('wp_head', 'wlwmanifest_link'); // remove wlwmanifest.xml (needed to support windows live writer)

remove_action('wp_head', 'start_post_rel_link', 10, 0); // remove random post link
remove_action('wp_head', 'parent_post_rel_link', 10, 0); // remove parent post link
remove_action('wp_head', 'adjacent_posts_rel_link', 10, 0); // remove the next and previous post links
remove_action('wp_head', 'adjacent_posts_rel_link_wp_head', 10, 0);

remove_action('wp_head', 'wp_shortlink_wp_head', 10, 0);

function themeslug_filter_front_page_template($template)
{
    return is_home() ? '' : $template;
}
add_filter('frontpage_template', 'themeslug_filter_front_page_template');

/**
 * Theme Options
 */
function my_admin_title($admin_title, $title)
{
    $t = "";
    if (is_category()) : $t .= 'Category: ';
        $t .= wp_title('');
        $t .= ' - ';
    elseif (function_exists('is_tag') && is_tag()) : single_tag_title('Tag Archive for &quot;');
        $t .= '&quot; - ';
    elseif (is_archive()) : $t .= wp_title('');
        $t .= ' Archive - ';
    elseif (is_page()) : $t .= wp_title('');
        $t .= (!empty(wp_title(''))) ? ' - ' : '';
    elseif (is_search()) : $t .= 'Search for &quot;' . wp_specialchars($s) . '&quot; - ';
    elseif (!(is_404()) && (is_single()) || (is_page())) : $t .= wp_title('');
        $t .= ' - ';
    elseif (is_404()) : $t .= 'Not Found - ';
    endif;

    return trim($t) . get_bloginfo('name') . ' &bull; ' . $title;
}
add_filter('admin_title', 'my_admin_title', 10, 2);

function filter_wp_title($title)
{
    if (preg_match("#/(\w.*)/#", $title, $matches)) return $matches[0];

    return $title;
}
add_filter('wp_title', 'filter_wp_title');

function max_title_length($title)
{
    $max = 20;
    if (strlen($title) > $max) {
        return substr($title, 0, $max) . " &hellip;";
    } else {
        return $title;
    }
}
add_filter('the_title', 'max_title_length');

function titlerestriction($title)
{
    global $post;
    $title = $post->post_title;
    $restrictedWords = "word1;word2;word3";
    $restrictedWords = explode(";", $restrictedWords);
    foreach ($restrictedWords as $restrictedWord) {
        if (stristr($title, $restrictedWord))
            wp_die(__('Error: You have used a forbidden word in post title'));
    }
}
add_action('publish_post', 'titlerestriction');

function change_wp_title_separator($title, $sep)
{
    $sep = '-';
    $title = str_replace('|', $sep, $title);
    return $title;
}
add_filter('wp_title', 'change_wp_title_separator', 10, 2);

/*
 *	Options Pages for ACF
 */
if (function_exists('acf_add_options_page')) {
    $args = array(
        'page_title' => 'Theme Options',
        'menu_title' => 'Theme Options',
        'position' => 2,
    );

    acf_add_options_page($args);
}

/**
 * Clean style tags
 */
function clean_style_tag($input)
{
    preg_match_all("!<link rel='stylesheet'\s?(id='[^']+')?\s+href='(.*)' type='text/css' media='(.*)' />!", $input, $matches);
    if (empty($matches[2])) {
        return $input;
    }
    // Only display media if it is meaningful
    $media = $matches[3][0] !== '' && $matches[3][0] !== 'all' ? ' media="' . $matches[3][0] . '"' : '';
    return '<link rel="stylesheet" href="' . $matches[2][0] . '"' . $media . '>' . "\n";
}
// add_filter('style_loader_tag', 'clean_style_tag');

// Clean script tags
// add_filter('script_loader_tag', 'clean_script_tag');
function clean_script_tag($input)
{
    $input = str_replace("type='text/javascript' ", '', $input);
    return str_replace("'", '"', $input);
}

/**
 * Move scripts to footer
 */
function remove_head_scripts()
{
    remove_action('wp_head', 'wp_print_scripts');
    remove_action('wp_head', 'wp_print_head_scripts', 9);
    remove_action('wp_head', 'wp_enqueue_scripts', 1);

    add_action('wp_footer', 'wp_print_scripts', 5);
    add_action('wp_footer', 'wp_print_head_scripts', 5);
    add_action('wp_footer', 'wp_enqueue_scripts', 5);
}
add_action('wp_enqueue_scripts', 'remove_head_scripts');

/**
 * Remove WP version
 */
function wpbeginner_remove_version()
{
    return '';
}
add_filter('the_generator', 'wpbeginner_remove_version');

// remove wp version param from any enqueued scripts
function vc_remove_wp_ver_css_js($src)
{
    if (strpos($src, 'ver=')) {
        $src = remove_query_arg('ver', $src);
    }
    return $src;
}
add_filter('style_loader_src', 'vc_remove_wp_ver_css_js', 9999);
add_filter('script_loader_src', 'vc_remove_wp_ver_css_js', 9999);

/**
 * Remove Author Archives
 */
add_action('template_redirect', 'my_custom_disable_author_page');
function my_custom_disable_author_page()
{
    global $wp_query;

    if (is_author() || is_attachment()) {
        $wp_query->set_404();
        status_header(404);
    }
}
