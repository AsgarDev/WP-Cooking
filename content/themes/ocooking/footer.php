<footer class="footer">
      <div class="content has-text-centered">
        <p>
          <strong><?= bloginfo('name'); ?></strong>
          <?php _e('par', 'ocooking'); ?>
          <a title="<?php esc_attr_e('Visiter le site de l\'auteur du thème', 'ocooking'); ?>" href="https://oclock.io" class="has-text-primary">O'clock</a>. <?= bloginfo('description'); ?>
        </p>
        <p>
          <a href="#" class="has-text-primary">
            <span class="icon">
                <i class="fa fa-cutlery" aria-hidden="true"></i>
              </span>
              <?= bloginfo('name'); ?> <?= date('Y'); ?>
          </a>
        </p>
      </div>
    </footer>
    <?php
      /*  Exemple d'utilisation de printf

      // Méthode avec des guillemets
      echo "Show $number older posts";

      ===

      // Méthode avec des apostrophes (concaténation)
      echo 'Show '.$number.' older posts';

      ===

      // Méthode avec printf
      printf('Show %s older posts', [$number);

      // L'avantage d'utiliser printf est que la chaine de caractères est "complete et en un seul morceau"
      // Du coup on peut facilement la traduire:
      printf(
        __('Show %s older posts', 'ocooking'),
        $number
      );

        =>  printf(
              'Afficher les %s anciens articles',
              $number
            );

        => 'Afficher les 4 anciens articles'


      // _n permet de jouer avec le pluriel
      _n( 'One post', 'Many posts', $number, 'ocooking'),

      // Il est également possible de combiner _n avec printf
      printf(
	      _n( 'One post', '%s posts', $number, 'oprofile'),
	      $number
      );

      */
    ?>
  </div>

  <aside class="menu">
    <p class="menu-label toggle-menu has-text-primary is-size-4">
        <i class="fa fa-times" aria-hidden="true"></i>
    </p>

    <?php get_template_part('template-parts/nav/nav', 'lateral'); ?>

  </aside>

    <?php wp_footer(); ?>

</body>
</html>
