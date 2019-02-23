<?php if (!is_front_page()) : ?>

<nav class="navbar navbar-light bg-primary mb-4">
    <div class="container d-flex justify-content-between">
        <a href="<?= esc_url(trailingslashit(home_url())) ?>" title="<?= esc_attr(get_bloginfo('name')) ?>" class="navbar-brand d-flex align-items-center" rel="home">
            <?php
            $custom_logo_id = get_theme_mod('custom_logo');

            if ($custom_logo_id) :
                $custom_logo_url = wp_get_attachment_image_url($custom_logo_id, 'full');
                echo '<img src="' . esc_url($custom_logo_url) . '" alt="' . get_bloginfo('name') . '" class="img-fluid">';
            else :
                echo '<strong> ' . get_bloginfo('name') . '</strong>';
            endif;

            $description = get_bloginfo('description', 'display');
            ?>
        </a>
        <a class="nav-button ml-auto"><span id="nav-icon3"><span></span><span></span><span></span><span></span></span></a>
    </div>

    <div class="fixed-top main-menu">
        <?php
        $args = array(
            'menu' => 'top',
            'container' => 'div',
            'container_class' => 'flex-center p-5',
            // 'container_id' => '',
            'menu_class' => 'nav navbar-nav flex-column',
            // 'menu_id' => '',
            // 'echo' => true,
            'fallback_cb' => 'wp_page_menu',
            // 'before' => '',
            // 'after' => '',
            // 'link_before' => '',
            // 'link_after' => '',
            // 'items_wrap' => '<ul id="%1$s" class="%2$s">%3$s</ul>',
            // 'item_spacing' => 'preserve',
            'depth' => 2,
            'walker' => new bs4navwalker(),
            // 'theme_location' => ''
        );

        wp_nav_menu($args);
        ?>
    </div>
</nav> <!--main-menu end-->

<?php endif; ?>
