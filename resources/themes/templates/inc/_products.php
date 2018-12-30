<?php

$products = tr_post_type('Product', 'Products')
    ->setIcon('books')
    ->setTitlePlaceholder('Enter product name/title')
    ->setSlug('product')
    ->setAdminOnly()
    ->setArchivePostsPerPage(-1);

$args = $products->getArguments();
$args = array_merge($args, ['public' => true]);
$products->setArguments($args);

$products->setTitleForm(function () {
    $form = tr_form();
    echo $form->text('Product Title');
    echo $form->image('Photo');
});

// -> Taxonomies
$pub = tr_taxonomy('Publisher')
    ->setHierarchical()
    ->setMainForm(function () {
        $form = tr_form();
        echo $form->gallery('Gallery')->setSetting('button', 'Insert Images');
    })
    ->setSlug('publishers');

// -> Metaboxes
$meta_prod_gallery = tr_meta_box('Pictures')->setCallback(function () {
    $form = tr_form();
    echo $form->gallery('Gallery')->setSetting('button', 'Insert Images');
});
$meta_prod_prize = tr_meta_box('Prizes')->setCallback(function () {
    $form = tr_form();
    echo $form->repeater('Prize')->setFields([
        $form->text('Title'),
        $form->image('Picture')->setSetting('button', 'Insert Images'),
    ]);
});

// -> Apply taxonomies and metaboxes
$products->apply([$meta_prod_gallery, $meta_prod_prize, $pub]);
