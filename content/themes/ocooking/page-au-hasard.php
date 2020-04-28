<?php get_header(); ?>

<div class="container">
    <main class="main">
    <?php

        $args = [
            'post_type'         => 'recipe',
            'posts_per_page'    => 1,
            'orderby'           => 'rand'
        ];

        $wp_query = new WP_Query($args);

        if ($wp_query->have_posts()): while ($wp_query->have_posts()): $wp_query->the_post();

            get_template_part('template-parts/recipe/recipe', 'full');

        endwhile;endif;

    ?>
    </main>
</div>

<?php get_footer(); ?>