<?php

function get_first_meta($post_id, $meta_name)
{
    return get_post_meta($post_id, $meta_name, true);
}

function get_preparation($post_id)
{
    return sprintf(
        __('%s min.', 'ocooking'),
        get_first_meta($post_id, 'preparation')
    );
}

function get_cuisson($post_id)
{
    return sprintf(
        __('%s min.', 'ocooking'),
        get_first_meta($post_id, 'temps_de_cuisson')
    );
}

function get_prix($post_id)
{
    return sprintf(
        __('%s € / pers.', 'ocooking'),
        get_first_meta($post_id, 'prix')
    );
}

function get_recipe_ingredients($post_id)
{
    $html = '';

    $array_ingredients = wp_get_post_terms($post_id, 'ingredient');

    // Je retiens le nombre de termes que j'affiche
    // pour le moment 0
    // $nbr_terms = 0;

    foreach ($array_ingredients as $wp_term) {

        // A chaque iteration dans ma boucle,
        // j'augmente le nombre de terme ajouté
        // $nbr_terms++;

        // Si j'en ai déjà 10...
        // if ($nbr_terms > 10) {

            // Je force une sortie de ma boucle
            // break;
        // }

        $html .= '<a href="'.get_term_link($wp_term).'" class="tag is-dark is-rounded">';
        $html .= ucfirst($wp_term->name);
        $html .= '</a> ';
    }

    return $html;
}

function get_recipe_type($post_id)
{
    $html = '';

    $array_types = wp_get_post_terms($post_id, 'type');

    foreach ($array_types as $wp_term) {

        $html .= '<a href="'.get_term_link($wp_term).'" class="button">';
        $html .= ucfirst($wp_term->name);
        $html .= '</a> ';
    }

    return $html;
}

function get_types_list()
{
    $html = '<ul>';

    $list = get_terms([
        'taxonomy' => 'type',
        'parent' => 0,
        'hide_empty' => false,
    ]);

    foreach ($list as $wp_term) {

        $html .= '<li><a href="'.get_term_link($wp_term).'"">';
        $html .= ucfirst($wp_term->name);
        $html .= '</a></li>';
    }

    $html .= '</ul>';

    return $html;
}

function get_last_blog_posts()
{
    $html = '<ul>';

    $list = wp_get_recent_posts([
        'numberposts' => 4,
    ], OBJECT);

    foreach ($list as $wp_object) {

        $html .= '<li><a href="'.get_permalink($wp_object).'"">';
        $html .= ucfirst($wp_object->post_title);
        $html .= '</a></li>';
    }

    return $html;
}