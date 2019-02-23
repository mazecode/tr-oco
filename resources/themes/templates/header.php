<!doctype html>
<html <?php language_attributes(); ?>>

<head>
	<!-- Required meta tags -->
	<meta charset="<?= bloginfo('charset'); ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="<?= bloginfo('description') ?>">
    <?= (tr_options_field('maintenance_mode')) ? '<meta name="robots" content="noindex, nofollow">' : '' ?>
	<title><?= wp_title() ?></title>
    
	<link rel="pingback" href="<?= bloginfo('pingback_url'); ?>" >
	<link rel="shortcut icon" href="<?= get_template_directory_uri(); ?>/img/favicon.ico" type="image/x-icon">
    <link rel="icon" href="<?= get_template_directory_uri(); ?>/img/favicon.ico" type="image/x-icon">

    <meta name="og:title" property="og:title" content="<?= bloginfo('name ') ?> | <?= bloginfo('description') ?>">

    <meta name=”google” content=”nositelinkssearchbox”>
    <meta name=”googlebot” content=”nosnippet”>

	<?php wp_head(); ?>
</head>

<body <?= body_class(); ?>>

<?php include 'template-parts/navbar.php'; ?>