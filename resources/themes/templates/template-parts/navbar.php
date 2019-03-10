<?php  ?>

<nav class="navbar _fixed-bottom sticky-top bg-white">
    <div class="container">
        <div class="col col-1 logo">
            <a class="navbar-brand" rel="home" href="<?= esc_url(trailingslashit(home_url())) ?>" title="<?= esc_attr(get_bloginfo('name')) ?>">
                <?php

                $custom_logo_id = get_theme_mod('custom_logo');

                if ($custom_logo_id) :
                    $custom_logo_url = wp_get_attachment_image_url($custom_logo_id, 'thumbnail');
                // echo '<img src="' . esc_url($custom_logo_url) . '" alt="' . get_bloginfo('name') . '" class="">';
                else :
                    echo '<strong class="display-4">' . get_bloginfo('name') . '</strong>';
                endif;

                // echo ' <strong class="text-white" style="font-weight: 300;">' . strtoupper(get_bloginfo('name')) . '</strong>';
                $description = get_bloginfo('description', 'display');

                ?>
            </a>
        </div>
        <a class="nav-button ml-auto"><span id="nav-icon3"><span></span><span></span><span></span><span></span></span></a>

        <div class="fixed-top main-menu">
            <?php
            $args = array(
                'menu' => 'top',
                'container' => 'div',
                'container_class' => 'flex-center p-5',
                // 'container_id' => '',
                'menu_class' => 'nav navbar-nav flex-column text-center',
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
    </div>
</nav>
<!--main-menu end-->

<?php  ?> 