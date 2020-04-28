<?php get_header(); ?>
<div class="container">
    <main class="main">
        <?php

            if (have_posts()): while(have_posts()): the_post();

                get_template_part('template-parts/recipe/recipe', 'full');

            endwhile;endif;

        ?>
    </main>
</div>

<?php get_footer(); ?>