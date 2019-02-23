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