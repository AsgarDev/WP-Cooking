<?php get_header(); ?>
<div class="container">
    <div class="columns">

    <main class="main column is-two-thirds">
        <article class="recipe">
        <header class="columns">
            <div class="recipe__title column is-two-thirds">
            <h2 class="title is-size-3">
                Sandwich de saison
            </h2>
            <p class="subtitle is-size-4">
                Préparée par Quantum
            </p>
            </div>
            <div class="recipe__meta column">
            <ul>
                <li><strong>Préparation</strong>: 30 minutes</li>
                <li><strong>Cuisson</strong>: 1h30 min.</li>
                <li><strong>Prix</strong>: 5€/pers.</li>
            </ul>
            </div>
        </header>
        <figure class="image">
            <img src="images/burger.jpg">
        </figure>
        <section class="recipe__summary columns">
            <div class="column is-two-thirds">
            <h3 class="title is-size-4">
                La recette en résumé
            </h3>
            <div class="recipe__content">
                Lorem, ipsum dolor sit amet consectetur adipisicing elit. Nesciunt provident eos tenetur deleniti cupiditate repellendus tempora quibusdam, quam incidunt accusantium.
            </div>
            </div>
            <aside class="recipe__ingredients column">
            <h3 class="subtitle is-size-5">Ingredients</h3>
            <a href="#" class="tag is-dark is-rounded">Tag label</a>
            <a href="#" class="tag is-dark is-rounded">Tag label</a>
            <a href="#" class="tag is-dark is-rounded">Tag label</a>
            <a href="#" class="tag is-dark is-rounded">Tag label</a>
            <a href="#" class="tag is-dark is-rounded">Tag label</a>
            </aside>
        </section>
        <footer class="recipe__footer level">
            <div class="level-left">
            <a class="button is-primary is-outlined">
                <span class="icon">
                <i class="fa fa-cutlery" aria-hidden="true"></i>
                </span>
                Lire la recette
            </a>
            </div>
            <div class="level-right">
            <strong>Recette visible dans </strong>
            <a href="#" class="button">Encas</a>
            </div>
        </footer>
        </article>
    </main>

    </div>
</div>
<?php get_footer(); ?>