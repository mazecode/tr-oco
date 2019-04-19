<?php if (is_home()) : ?>

<style>
    .masthead {
        height: 100vh;
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
        width: 345px;
        background-blend-mode: multiply;
        padding: 20px;
    }
</style>

<div class="jumbotron jumbotron-fluid masthead p-0 m-0">
    <div class="container-fluid h-100">
        <div class="row align-items-center h-100">
            <div class="col col-12 h-75">
                <h1 class="title d-none align-middle">
                    <?php
                    
                    $custom_logo_id = get_theme_mod('custom_logo');

                    if ($custom_logo_id) :
                        $custom_logo_url = esc_url(wp_get_attachment_image_url($custom_logo_id, 'full'));
                        echo "<img src='{$custom_logo_url}' alt='" . get_bloginfo('sitename') . "' class='img-fluid logotype align-middle'>";
                    endif;
                    
                    ?>
                    <?= tr_options_field('oco-theme.main_title') ?>
                </h1>
            </div>
            <div class="col col-12 text-center align-bottom">
                <span class="text-white position-relative fixed-bottom "><i class="fa fa-caret-down animated infinite bounce delay-2s"></i></span>
            </div>
        </div>
    </div>
</div>

<?php endif ?> 