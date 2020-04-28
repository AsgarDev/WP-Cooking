<?php

// Pour supprimer le menu d'aides
function wpo_remove_help( $old_help, $screen_id, $screen ){
    $screen->remove_help_tabs();
	return $old_help;
}

add_filter( 'contextual_help', 'wpo_remove_help', 999, 3 );


// Pour supprimer les options d'écrans
add_filter('screen_options_show_screen', '__return_false');