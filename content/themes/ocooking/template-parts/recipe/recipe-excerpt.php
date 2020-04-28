<article class="recipe">
    <header class="columns">
        <div class="recipe__title column is-two-thirds">
        <h2 class="title is-size-3">
            <?php the_title(); ?>
        </h2>
        <p class="subtitle is-size-4">
            Préparée par <?php the_author_link(); ?>
        </p>
        </div>
        <div class="recipe__meta column">
        <ul>
            <li><strong>Préparation</strong>: <?= get_preparation(get_the_ID()); ?></li>
            <li><strong>Cuisson</strong>: <?= get_cuisson(get_the_ID()); ?></li>
            <li><strong>Prix</strong>: <?= get_prix(get_the_ID()); ?></li>
        </ul>
        </div>
    </header>
    <figure class="image">
        <?php the_post_thumbnail(); ?>
    </figure>
    <section class="recipe__summary columns">
        <div class="column is-two-thirds">
        <h3 class="title is-size-4">
            <?php esc_html_e('La recette en résumé', 'ocooking'); ?>
        </h3>
        <div class="recipe__content">
            <?php the_excerpt(); ?>
        </div>
        </div>
        <aside class="recipe__ingredients column">
            <h3 class="subtitle is-size-5">Ingredients</h3>

            <?= get_recipe_ingredients(get_the_ID()); ?>

        </aside>
    </section>
    <footer class="recipe__footer level">
        <div class="level-left">
            <a href="<?php the_permalink(); ?>" class="button is-primary is-outlined">
                <span class="icon">
                <i class="fa fa-cutlery" aria-hidden="true"></i>
                </span>
                Lire la recette
            </a>
        </div>
        <div class="level-right">
            <strong>Recette visible dans </strong>
            <?= get_recipe_type(get_the_ID()); ?>
        </div>
    </footer>
</article>