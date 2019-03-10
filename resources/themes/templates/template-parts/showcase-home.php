<?php

// dd(wp_get_attachment_image_src(tr_options_field('oco-theme.main_picture')) );

if (is_home()) : ?>

<style>
    .masthead {
        height: 100vh;
        /* min-height: 400px; */
        background: linear-gradient(<?= tr_options_field('oco-theme.main_color_picture'); ?>, <?= tr_options_field('oco-theme.main_color_picture'); ?>), url("<?= wp_get_attachment_image_src(tr_options_field('oco-theme.main_picture'), 'full')[0] ?>");
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
        background-blend-mode: multiply;
    }

    .masthead .title {
        color: #ffffff;
        border: 0 !important;
        text-transform: uppercase;
        letter-spacing: -12px;
        font-weight: <?= tr_options_field('oco-theme.title_weight'); ?>;
    }

    .masthead .subtitle {
        color: #ffffff;
    }

    .masthead img.logotype {
        width: 180px;
    }
</style>

<div class="jumbotron jumbotron-fluid masthead p-0 m-0">
    <div class="container h-100">
        <div class="row h-100 align-items-center align-middle">
            <div class="col col-12 align-middle">
                <h1 class="display-2 title align-middle">
                    <?php
                    $custom_logo_id = get_theme_mod('custom_logo');

                    if ($custom_logo_id) :
                        $custom_logo_url = wp_get_attachment_image_url($custom_logo_id, 'full');
                        echo '<img src="' . esc_url($custom_logo_url) . '" alt="' . get_bloginfo('sitename') . '" class="img-fluid logotype align-middle">';
                    endif;
                    ?>
                    <?= tr_options_field('oco-theme.main_title') ?>
                </h1>
                <p class="lead subtitle align-middle text-right"><?= tr_options_field('oco-theme.main_subtitle') ?></p>
            </div>
        </div>
    </div>
</div>

<?php endif ?> 