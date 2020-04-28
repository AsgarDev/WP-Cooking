<?php

// <ul class="menu-list">
// <li><a>item de menu</a></li>
// <li><a>Recette</a></li>
// <li><a>Plats de résistance</a></li>
// <li><a>Desserts</a></li>
// </ul>

wp_nav_menu([
    'theme_location' => 'menu_lateral',
    'container' => false,
    'menu_class' => 'menu-list'
]);