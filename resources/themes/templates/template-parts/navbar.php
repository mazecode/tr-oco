<nav class="navbar sticky-top bg-white shadows">
    <div class="container">
        <div class="col-5 col-sm-4 col-md-3 col-lg-3 logo">
            <a class="navbar-brand" rel="home" href="<?= esc_url(trailingslashit(home_url())) ?>" title="<?= esc_attr(get_bloginfo('name')) ?>">
                <?php
                
                if (get_theme_mod('ocotheme_main_menu_logotype_image')) :
                    $custom_logo_url = get_theme_mod('ocotheme_main_menu_logotype_image');
                else :
                    $custom_logo_id = get_theme_mod('custom_logo');
                    $custom_logo_url = wp_get_attachment_image_url($custom_logo_id, 'full');
                endif;

                if ($custom_logo_url) :
                    echo '<img src="' . esc_url($custom_logo_url) . '" alt="' . get_bloginfo('name') . '" class="">';
                else :
                    echo '<strong class="" style="font-weight: 300;">' . get_bloginfo('name') . '</strong>';
                endif;

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
                'depth' => 3,
                'walker' => new bs4navwalker(),
                // 'theme_location' => ''
            );

            wp_nav_menu($args);
            ?>
        </div>
    </div>
</nav>
<!--main-menu end--> 