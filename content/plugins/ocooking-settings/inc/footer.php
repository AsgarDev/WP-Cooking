<?php

// Modifier les crédits du footer
function wpo_remove_footer_admin() {
    return 'By oCooking Production International&reg;';
}
add_filter('admin_footer_text', 'wpo_remove_footer_admin');


// Supprimer le numero de version du footer
function wpo_remove_version_footer() {
    remove_filter( 'update_footer', 'core_update_footer' );
}
add_action( 'admin_menu', 'wpo_remove_version_footer' );