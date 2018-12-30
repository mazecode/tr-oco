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
