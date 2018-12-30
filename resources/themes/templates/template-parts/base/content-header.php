<header>
    <nav class="navbar navbar-expand-sm navbar-light bg-faded">
        <div class="container">
            <a class="navbar-brand" href="<?= get_bloginfo('url'); ?>">
           
            <?php
            // $logo = get_field('logo', 'options');
            
            // if ( $logo ) {
            // 	echo '<img src="'.$logo['sizes']['large'].'" alt="'.get_bloginfo('name').'" class="img-fluid"/>';
            // } else {
                // echo get_bloginfo('name');
            // }

            $output = null;

            if (function_exists('the_custom_logo') && has_custom_logo()) {
                $output .= get_custom_logo();
            } else {
                $output .= '<a href="' . esc_url(trailingslashit(home_url())) . '" title="' . esc_attr(get_bloginfo('name')) . '" rel="home">';
                $output .= get_bloginfo('name');
                $output .= '</a>';
            }

            echo $output;

            $description = get_bloginfo('description', 'display');
            if ((function_exists('the_custom_logo') && !has_custom_logo()) && $description || is_customize_preview()) :
            ?>
            <p class="site-description">
                <?php echo $description; /* WPCS: xss ok. */ ?>
            </p>
            <?php endif; ?>
            </a>

            <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <nav class="collapse navbar-toggleable-xs navbar-collapse" id="navbarSupportedContent">
                <?php
                $args = array(
                    'theme_location' => 'main-menu',
                    'menu_class' => 'navbar-nav ml-auto',
                    'container' => false
                );

                wp_nav_menu($args);
                ?>
            </nav>
        </div>
    </nav>
</header>
