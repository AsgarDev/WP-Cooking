<?php

class oCookingRestApi
{
    public function __construct()
    {
        add_action('rest_api_init', [$this, 'authorField']);
        add_action('rest_api_init', [$this, 'metaField']);
        add_action('rest_api_init', [$this, 'thumbnailField']);
        add_action('rest_api_init', [$this, 'postPreparation']);
        add_action('rest_api_init', [$this, 'postCookingTime']);
    }

    public function authorField()
    {
        // On souhaite modifier le retour de la REST API
        // https://developer.wordpress.org/reference/functions/register_rest_field/
        register_rest_field(
            // Type(s) de contenu(s) que l'on souhaite modifier
            ['post', 'recipe'],
            // Nom du champ/clé à ajouter/modifier
            'author',
            [
                // Fonction à appeler lors d'un GET
                'get_callback' => [$this, 'getAuthorName'],
                // Fonction à appeler lors d'un POST
                'update_callback' => null,
                // Structure de la donnée
                'schema' => null
            ]
        );
    }

    public function getAuthorName($object, $field_name, $request)
    {
        // $object : l'objet courant
        // $field_name le nom du champ/clé ciblé
        // $request : requête courante

        // var_dump(get_the_author_meta('nickname', $object['author']));
        // exit();
        // https://developer.wordpress.org/reference/functions/get_the_author_meta/
        return [
            'id' => $object['author'],
            'name' => get_the_author_meta('nickname', $object['author'])
        ];
    }

    public function metaField()
    {
        register_rest_field(
            'recipe',
            'meta',
            [
                // fonction à appeler lors d'un GET
                'get_callback' => [$this, 'getMetaCustomFields'],
                // fonction à appeler lors d'un POST
                'update_callback' => null,
                'schema' => null
            ]
        );
    }

    public function getMetaCustomFields($object)
    {
        // On souhaite récupérer les Custom Fields (temps de préparation, temps de cuisson, coût par personne...)

        // On commence par récupérer TOUTES les méta 
        // https://developer.wordpress.org/reference/functions/get_post_meta/

        $array_return = [];

        $object_id = $object['id'];
        $all_meta = get_post_meta($object_id);
        // var_dump($all_meta);
        // exit();

        foreach ($all_meta as $meta_name => $meta_value) {

            // On ne souhaite récupérer que les méta qui ne commencent pas par un "_"
            // https://www.php.net/manual/fr/function.substr.php
            if (substr($meta_name, 0, 1) != '_') {
                $array_return[$meta_name] = $meta_value[0];
            }
        }

        // On peut aussi utiliser la fonction mise à dispo par ACF
        // return get_fields($object['id']);

        return $array_return;
    }

    // On souhaite ajouter un champ "thumbnail" dans la réponse de mon api qui me renvoie l'URL de l'image mise en avant sur mes recettes
    // Si possible, on souhaite aussi récupérer d'autres infos (largeur, hauteur, description...)

    public function thumbnailField()
    {
        register_rest_field(
            'recipe',
            'thumbnail',
            [
                'get_callback' => [$this, 'getThumbnail'],
                'update_callback' => null,
                'schema' => null
            ]
        );
    }

    public function getThumbnail($object)
    {
        // On vérifie la présence d'une image mise en avant
        // https://developer.wordpress.org/reference/functions/has_post_thumbnail/
        if (has_post_thumbnail($object['id'])) {
            // Si on souhaite récupérer uniquement l'URL
            // return get_the_post_thumbnail_url($object['id']);
            
            $thumbnail_details = wp_get_attachment_image_src($object['featured_media']);

            return [
                'url' => $thumbnail_details[0],
                'width' => $thumbnail_details[1],
                'height' => $thumbnail_details[2]
            ];
        }
        else {
            return false;
        }
    }

    // On souhaite mettre à jour / enregistrer notre temps de preparation lors d'un POST (en gros mettre à jour une metadata)
    // https://developer.wordpress.org/reference/functions/update_post_meta/
    public function postPreparation() {
        register_rest_field(
            'recipe',
            'preparation',
            [
                'get_callback' => null,
                'update_callback' => function ($value, $object, $field_name) {
                    // $value => la valeur récupérée pour le champ en question
                    // $object => objet courant
                    // $field_name => le nom du champ (ici "preparation")
                    // var_dump($object);
                    // die();
                    update_post_meta($object->ID, 'preparation', $value);
                },
                'schema' => null
            ]
        );
    }

    public function postCookingTime() {
        register_rest_field(
            'recipe',
            'temps_de_cuisson',
            [
                'get_callback' => null,
                'update_callback' => function ($value, $object, $field_name) {
                    // $value => la valeur récupérée pour le champ en question
                    // $object => objet courant
                    // $field_name => le nom du champ (ici "preparation")
                    // var_dump($object);
                    // die();
                    update_post_meta($object->ID, 'temps_de_cuisson', $value);
                },
                'schema' => null
            ]
        );
    }
}