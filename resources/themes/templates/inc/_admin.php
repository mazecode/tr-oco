<?php

// Admin Dashboard
$dash = tr_meta_box('Maintenance')->addScreen('dashboard')
    ->setCallback(function () {
        $form = tr_form('option');
        $form->useJson()->useAjax();
        echo $form->open();
        echo $form->radio('Maintenance mode')->setOptions(['ON' => '1', 'OFF' => '0'])->setSetting('default', '0');
        echo $form->close('Save');
    });


/* edit the admin page title for a particular custom post type */
function edit_page_title()
{
    global $post, $title, $action, $current_screen;
    if (isset($current_screen->post_type) && $current_screen->post_type == 'CUSTOM-POST-TYPE' && $action == 'edit') {
        /* this is the new page title */
        $title = 'Change to whatever you want: ' . $post->post_title;
    } else {
        $title = $title . ' - ' . get_bloginfo('name');
    }
    return $title;
}

add_action('admin_title', 'edit_page_title');

/**
 * Twenty Seventeen: Customizer
 *
 * @package WordPress
 * @subpackage Twenty_Seventeen
 * @since 1.0
 */
/**
 * Add postMessage support for site title and description for the Theme Customizer.
 *
 * @param WP_Customize_Manager $wp_customize Theme Customizer object.
 */
function ocotheme_customize_register($wp_customize)
{
    $wp_customize->get_setting('blogname')->transport         = 'postMessage';
    $wp_customize->get_setting('blogdescription')->transport  = 'postMessage';
    $wp_customize->get_setting('header_textcolor')->transport = 'postMessage';
    $wp_customize->get_setting('background_color')->transport = 'postMessage';
    $wp_customize->get_section('title_tagline')->priority = 50;

    // $wp_customize->add_control(
    //     new WP_Customize_Media_Control(
    //         $wp_customize,
    //         'image_control',
    //         array(
    //             'label' => __('Featured Home Page Image', 'theme_textdomain'),
    //             'section' => 'media',
    //             'mime_type' => 'image',
    //         )
    //     )
    // );

    // $wp_customize->add_section('section_id', array(
    //     'title' => __('Título Section', 'your_textdomain'),
    //     'description' => __('Descripción Section', 'your_textdomain'),
    // ));

    /*
	 * Failsafe is safe
	 */
    if (!isset($wp_customize)) {
        return;
    }

    /**
     * Add 'Home Top' Section.
     */
    $wp_customize->add_section(
        // $id
        'sk_section_home_top',
        // $args
        array(
            'title'            => __('Home Top', 'theme-slug'),
            'description'    => __('Some description for the options in the Home Top section', 'theme-slug'),
            'active_callback' => 'is_front_page',
        )
    );

    /**
     * Add 'Home Top Background Image' Setting.
     */
    $wp_customize->add_setting(
        // $id
        'ocotheme_home_top_background_image',
        // $args
        array(
            // 'default'           =>  wp_get_attachment_image_src(tr_options_field('oco-theme.main_picture')),
            'sanitize_callback' => 'esc_url_raw',
            'transport'         => 'postMessage'
        )
    );


    /**
     * Add 'Home Top Background Image' Setting.
     */
    $wp_customize->add_setting(
        // $id
        'ocotheme_main_menu_logotype_image',
        // $args
        array(
            // 'default'           =>  wp_get_attachment_image_src(tr_options_field('oco-theme.main_picture')),
            'sanitize_callback' => 'esc_url_raw',
            'transport'         => 'postMessage'
        )
    );

    /**
     * Add 'Home Top Background Image' image upload Control.
     */
    $wp_customize->add_control(
        new WP_Customize_Image_Control(
            // $wp_customize object
            $wp_customize,
            // $id
            'ocotheme_home_top_background_image',
            // $args
            array(
                'settings'        => 'ocotheme_home_top_background_image',
                'section'        => 'sk_section_home_top',
                'label'            => __('Home Top Background Image', 'theme-slug'),
                'description'    => __('Select the image to be used for Home Top Background.', 'theme-slug')
            )
        )
    );

    $wp_customize->add_control(
        new WP_Customize_Image_Control(
            // $wp_customize object
            $wp_customize,
            // $id
            'ocotheme_main_menu_logotype_image',
            // $args
            array(
                'settings'        => 'ocotheme_main_menu_logotype_image',
                'section'        => 'sk_section_home_top',
                'label'            => __('Logotype Main menu', 'theme-slug'),
                'description'    => __('Select the image to be used.', 'theme-slug')
            )
        )
    );



    $wp_customize->add_setting('background_color', array(
        'default'     => '#43C6E4',
        'transport'   => 'refresh',
    ));

    $wp_customize->add_section('background_image', array(
        'title'          => __('Background Image'),
        'theme_supports' => 'custom-background',
        'priority'       => 10,
    ));

    $wp_customize->add_setting('background_image', array(
        'default'        => get_theme_support('custom-background', 'default-image'),
        'theme_supports' => 'custom-background',
    ));

    $wp_customize->add_setting(new WP_Customize_Background_Image_Setting($wp_customize, 'background_image_thumb', array(
        'theme_supports' => 'custom-background',
    )));
    $wp_customize->add_control(new WP_Customize_Background_Image_Control($wp_customize));

    $wp_customize->add_setting('background_repeat', array(
        'default'        => 'repeat',
        'theme_supports' => 'custom-background',
    ));

    $wp_customize->add_control('background_repeat', array(
        'label'      => __('Background Repeat'),
        'section'    => 'background_image',
        'type'       => 'radio',
        'choices'    => array(
            'no-repeat'  => __('No Repeat'),
            'repeat'     => __('Tile'),
            'repeat-x'   => __('Tile Horizontally'),
            'repeat-y'   => __('Tile Vertically'),
        ),
    ));

    $wp_customize->add_setting('background_position_x', array(
        'default'        => 'left',
        'theme_supports' => 'custom-background',
    ));

    $wp_customize->add_control('background_position_x', array(
        'label'      => __('Background Position'),
        'section'    => 'background_image',
        'type'       => 'radio',
        'choices'    => array(
            'left'       => __('Left'),
            'center'     => __('Center'),
            'right'      => __('Right'),
        ),
    ));

    $wp_customize->add_setting('background_attachment', array(
        'default'        => 'fixed',
        'theme_supports' => 'custom-background',
    ));

    $wp_customize->add_control('background_attachment', array(
        'label'      => __('Background Attachment'),
        'section'    => 'background_image',
        'type'       => 'radio',
        'choices'    => array(
            'fixed'      => __('Fixed'),
            'scroll'     => __('Scroll'),
        ),
    ));
}
add_action('customize_register', 'ocotheme_customize_register');

/**
 * Writes the Home Top background image out to the 'head' element of the document
 * by reading the value from the theme mod value in the options table.
 */
function ocotheme_customizer_css()
{
    if (get_theme_mod('ocotheme_home_top_background_image')) :
        $home_top_background_image_url = get_theme_mod('ocotheme_home_top_background_image');
    else :
        $home_top_background_image_url = get_stylesheet_directory_uri() . '/images/minimography_005_orig.jpg';
    endif;

    $color = tr_options_field('oco-theme.main_color_picture');

    echo "<style type='text/css'>
            .masthead {
                background: linear-gradient({$color}, {$color}), url({$home_top_background_image_url});
            }
        </style>";
}

add_action('wp_head', 'ocotheme_customizer_css');
