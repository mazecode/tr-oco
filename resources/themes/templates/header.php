<?php

/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package brix_portfolio
 */
?>
<!doctype html>
<html <?php language_attributes(); ?>>

<head>
	<!-- Required meta tags -->
	<meta charset="<?= bloginfo('charset'); ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="<?= bloginfo('description') ?>">
    <?= (tr_options_field('maintenance_mode')) ? '<meta name="robots" content="noindex, nofollow">' : '' ?>

	<title>
	<?php
$t = "";

if (is_category()) {
    $t .= 'Category: ';
    $t .= wp_title('');
    $t .= ' - ';
} elseif (function_exists('is_tag') && is_tag()) {
    single_tag_title('Tag Archive for &quot;');
    $t .= '&quot; - ';
} elseif (is_archive()) {
    $t .= wp_title('');
    $t .= ' Archive - ';
} elseif (is_page()) {
    $t .= wp_title('');
    $t .= (!empty(wp_title(''))) ? ' - ' : '';
} elseif (is_search()) {
    $t .= 'Search for &quot;' . wp_specialchars($s) . '&quot; - ';
} elseif (!(is_404()) && (is_single()) || (is_page())) {
    $t .= wp_title('');
    $t .= ' - ';
} elseif (is_404()) {
    $t .= 'Not Found - ';
}
echo trim($t);
bloginfo('name');
?>
	</title>
    
	<link rel="pingback" href="<?php bloginfo('pingback_url'); ?>" >
	<link rel="shortcut icon" href="<?= get_template_directory_uri(); ?>/img/favicon.ico" type="image/x-icon">
    <link rel="icon" href="<?= get_template_directory_uri(); ?>/img/favicon.ico" type="image/x-icon">

    <meta name="og:title" property="og:title" content="<?= bloginfo('name ') ?> | <?= bloginfo('description') ?>">

    <meta name=”google” content=”nositelinkssearchbox”>
    <meta name=”googlebot” content=”nosnippet”>

	<?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
