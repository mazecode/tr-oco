<?php
// Allows robot indexing after dev database has been pushed
$live_url = 'http://typerocket.test/'; // Must match WordPress live URL

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
add_action('after_setup_theme', 'remove_admin_bar');
add_filter('show_admin_bar', '__return_false');


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

// function themeslug_filter_front_page_template($template)
// {
//     return is_home() ? '' : $template;
// }
// add_filter('frontpage_template', 'themeslug_filter_front_page_template');
