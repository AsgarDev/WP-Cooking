<?php
/*
Plugin Name: oCooking Settings
Description: Réglages pour le thème oCooking
Author: Quantum
Version: 1.0.0
*/

// Sécurisation du plugin
if (!defined('WPINC')) {die();}

// Inclusion des différentes classes necessaire au plugin
require plugin_dir_path(__FILE__) . 'inc/recipe_cpt.php';
require plugin_dir_path(__FILE__) . 'inc/role.php';
require plugin_dir_path(__FILE__) . 'inc/settings.php';
require plugin_dir_path(__FILE__) . 'inc/template-tags.php';
require plugin_dir_path(__FILE__) . 'inc/dashboard.php';
require plugin_dir_path(__FILE__) . 'inc/interface.php';
require plugin_dir_path(__FILE__) . 'inc/footer.php';
require plugin_dir_path(__FILE__) . 'inc/rest_api.php';

// CPT RECIPE + TAXO
$recipe_cpt = new Recipe_cpt();

register_activation_hook(__FILE__, [$recipe_cpt, 'activation']);
register_deactivation_hook(__FILE__, [$recipe_cpt, 'deactivation']);

// ROLES
$ocooking_role = new oCookingRole();

register_activation_hook(__FILE__, [$ocooking_role, 'activation']);
register_deactivation_hook(__FILE__, [$ocooking_role, 'deactivation']);

// REST API
$ocooking_rest_api = new oCookingRestApi();