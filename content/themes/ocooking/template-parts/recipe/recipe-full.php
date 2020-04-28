<article class="recipe margin">
    <header class="columns">
        <div class="recipe__title column">
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
            La recette en détail
        </h3>
        <div class="recipe__content">
            <?php the_content(); ?>
        </div>
        </div>
        <aside class="recipe__ingredients column">
            <h3 class="subtitle is-size-5">Ingredients</h3>

            <?= get_recipe_ingredients(get_the_ID()); ?>

        </aside>
    </section>
    <footer class="recipe__footer">
        <strong>Recette visible dans </strong>
        <?= get_recipe_type(get_the_ID()); ?>

        <?php

        // Récuperer l'utilisateur courant
        // $user = wp_get_current_user();

        // $user->ID;

        // add_user_meta( $user->ID, 'cat_name', 'ash', false );
        // add_user_meta( $user->ID, 'cat_name', 'mia', false );

        ?>
        <?php if (current_user_can('edit_recipe')): ?>

            <p class="has-text-centered">
                <a href="<?= admin_url( 'post.php?post='.get_the_ID().'&action=edit'); ?>" class="has-text-danger" target="_blank">
                    <strong>Afficher la recette sur le BO</strong>
                </a>
            </p>

        <?php endif; ?>
    </footer>
</article>