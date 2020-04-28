<?php

function ocooking_option_facebook()
{
    $ocooking_settings_options = get_option( 'ocooking_settings_option_name' ); // Array of All Options
    return 'https://facebook.com/'.$ocooking_settings_options['facebook_url_0']; // facebook_url
}

function ocooking_option_twitter()
{
    $ocooking_settings_options = get_option( 'ocooking_settings_option_name' ); // Array of All Options
    return 'https://twitter.com/'.$ocooking_settings_options['twitter_url_1']; // twitter_url
}