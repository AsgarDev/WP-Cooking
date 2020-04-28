<?php get_header(); ?>

<main class="main columns">
    <?php

        if (have_posts()): while(have_posts()): the_post();

            get_template_part('template-parts/recipe/recipe', 'archive');

        endwhile;endif;

    ?>
</main>

<?php get_footer(); ?>