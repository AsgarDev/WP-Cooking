<?php

function ocooking_add_dashboard_widgets()
{
    wp_add_dashboard_widget(
        'ocooking_dashboard_widget_pub', // Nom de mon widget
        'oCooking International Production', // Titre de l'element
        'oagency_dashboard_widget_function' // Fonction en callback
    );
}

function oagency_dashboard_widget_function()
{
    ?>
    <h3>Pour contacter le responsable informatique:</h3>
    <p>Par téléphone: <a href="tel:010203040506">01.02.03.04.05.06</a> (50€/min)</p>
    <p>Par mail: <a href="mailto:informatique@oclock.local">informatique@oclock.local</a></p>
    <?php
}

add_action('wp_dashboard_setup', 'ocooking_add_dashboard_widgets');

function remove_dashboard_meta() {
    remove_meta_box( 'dashboard_incoming_links', 'dashboard', 'normal' );
    remove_meta_box( 'dashboard_primary', 'dashboard', 'side' );
    remove_meta_box( 'dashboard_secondary', 'dashboard', 'normal' );
    remove_meta_box( 'dashboard_quick_press', 'dashboard', 'side' );
    remove_meta_box( 'dashboard_recent_drafts', 'dashboard', 'side' );
    remove_meta_box( 'dashboard_recent_comments', 'dashboard', 'normal' );
    remove_meta_box( 'dashboard_right_now', 'dashboard', 'normal' );
    remove_meta_box( 'dashboard_activity', 'dashboard', 'normal');//since 3.8
}

add_action('wp_dashboard_setup', 'remove_dashboard_meta');

remove_action('welcome_panel', 'wp_welcome_panel');