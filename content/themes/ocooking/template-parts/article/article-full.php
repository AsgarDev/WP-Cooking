<article class="recipe margin">
    <header class="columns">
        <div class="recipe__title column">
        <h2 class="title is-size-3">
            <?php the_title(); ?>
        </h2>
        <p class="subtitle is-size-4">
            Rédigé par <?php the_author_link(); ?>
        </p>
        </div>
    </header>
    <figure class="image">
        <?php the_post_thumbnail(); ?>
    </figure>
    <section class="recipe__summary">
        <div class="recipe__content">
            <?php the_content(); ?>
        </div>
    </section>
</article>