<?php

if (!function_exists('ocooking_scripts')):

    function ocooking_scripts()
    {
        wp_enqueue_style(
            'ocooking-style',
            get_theme_file_uri('/public/css/style.css'),
            [],
            '1.0.3'
        );

        wp_enqueue_script(
            'ocooking-app',
            get_theme_file_uri('/public/js/app.js'),
            [],
            '1.0.0',
            true
        );
    }

endif;


add_action('wp_enqueue_scripts', 'ocooking_scripts');