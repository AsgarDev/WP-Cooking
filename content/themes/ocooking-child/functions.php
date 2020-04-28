<?php

function enqueue_child_style() {

    // Pour "dé-charger" une stylesheet
    // wp_dequeue_style('ocooking-style');

    wp_enqueue_style(
        'new-style',
        get_theme_file_uri('style/style.css')
    );

}

add_action('wp_enqueue_scripts', 'enqueue_child_style', 11);

function add_visit_log() {
    // Je souhaite ajouter une ligne dans la table wp_visit_log de la BDD
    // Avec le user (si connecté) au niveau du champ user

    // https://developer.wordpress.org/reference/classes/wpdb/
    // On utilise wpdb
    global $wpdb;

    $prefix =  $wpdb->prefix;

    // var_dump(wp_get_current_user());

    // on insert une nouvelle ligne dans la table
    $wpdb->insert(
        $prefix . 'visit_log',
        [
            'user' => wp_get_current_user()->user_login
        ]
    );

    // on fait un select classique en SQL
    // on récupère le résultat sous la forme d'un array d'objets
    $logs = $wpdb->get_results( "SELECT * FROM {$wpdb->prefix}visit_log");

    // on affiche
    echo '<ul>';
    foreach($logs as $log) {
        echo '<li>' . $log->time . ' - ' . $log->user . '</li>';
    }
    echo '</ul>';
}