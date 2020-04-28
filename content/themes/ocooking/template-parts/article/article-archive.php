<article class="recipe column is-one-third margin">
    <figure class="image">
        <?php the_post_thumbnail(); ?>
    </figure>
    <section class="recipe__summary">
        <h3 class="title is-size-4">
            <?php the_title(); ?>
        </h3>
        <p class="subtitle is-size-4">
            <?php the_author_link(); ?>
        </p>
        <div class="recipe__content">
            <?php the_excerpt(); ?>
        </div>
    </section>
    <footer class="recipe__footer">
        <a href="<?php the_permalink(); ?>" class="button is-primary is-outlined">
            <span class="icon">
            <i class="fa fa-cutlery" aria-hidden="true"></i>
            </span>
            <?= esc_html__('Lire la suite', 'ocooking'); ?>
        </a>
    </footer>
</article>