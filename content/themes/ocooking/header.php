<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <?php wp_head(); ?>

</head>
<body class="">

  <div class="wrapper">

    <header class="header">
      <nav class="navbar" role="navigation" aria-label="main navigation">
          <div class="navbar-brand">
            <a href="<?= home_url(); ?>" class="navbar-item">
                <span class="icon">
                  <i class="fa fa-cutlery" aria-hidden="true"></i>
                </span>
                <?= bloginfo('name'); ?>
              </a>
          </div>

          <div class="navbar-menu">

                <?php get_template_part('template-parts/nav/nav', 'header'); ?>

                <div class="navbar-end">
                    <a href="<?= ocooking_option_facebook(); ?>" class="navbar-item">
                      <i class="fa fa-facebook" aria-hidden="true"></i>
                    </a>
                    <a href="<?= ocooking_option_twitter(); ?>" class="navbar-item">
                      <i class="fa fa-twitter" aria-hidden="true"></i>
                    </a>
                    <a href="#" class="navbar-item toggle-menu">
                      <i class="fa fa-bars" aria-hidden="true"></i>
                    </a>
                </div>
            </div>
      </nav>
    </header>