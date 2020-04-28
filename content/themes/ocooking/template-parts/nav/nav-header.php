<?php

// <div class="navbar-start">
//     <a href="#" class="navbar-item">Au hasard</a>
//     <a href="#" class="navbar-item">Recettes</a>
// </div>

$menu = wp_nav_menu([
    'theme_location' => 'menu_header',
    'container_class' => 'navbar-start',
    'echo' => false,
]);

// Comme mon menu est créé par défaut avec de ul/li
// je les supprime via PHP (en mode violent)
$menu = strip_tags($menu, '<a><div>');

// J'ai besoin d'avoir une classe sur mes balises <a>
// Comme WP ne me permet pas de le faire (normalement on les ajoute sur les <li>)
// Je le fait en mode filou grace à PHP
$menu = str_replace('a href', 'a class="navbar-item" href', $menu);

echo $menu;