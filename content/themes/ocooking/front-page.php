<?php get_header(); ?>
<?php add_visit_log(); ?>
<div class="container">
    <div class="columns">

        <?php get_sidebar(); ?>

        <main class="main column is-two-thirds">
            <?php

                $args = [
                    'post_type' => 'recipe',
                    'posts_per_page'    => 1
                ];

                $wp_query = new WP_Query($args);

                if ($wp_query->have_posts()): while ($wp_query->have_posts()): $wp_query->the_post();

                    get_template_part('template-parts/recipe/recipe', 'excerpt');

                endwhile; endif;

                wp_reset_postdata();

            ?>
        </main>

    </div>
</div>
<?php get_footer(); ?>