<aside class="sidebar column">
        <h1 class="title is-size-1"><?= bloginfo('name'); ?></h1>
        <p class="subtitle is-size-5"><?= bloginfo('description'); ?></p>
        <?php
            if(have_posts()): while(have_posts()): the_post();
                the_content();
            endwhile;endif;
        ?>
        <hr>
        <section class="sidebar__blog">
            <h4 class="subtitle is-size-6"><?php esc_html_e('Blog', 'ocooking'); ?></h4>
            <?= get_last_blog_posts(); ?>
        </section>
        <hr>
        <section class="sidebar__taxonomy">
            <h4 class="subtitle is-size-6"><?php esc_html_e('Types de recettes', 'ocooking'); ?></h4>
            <?= get_types_list(); ?>
        </section>
        <hr>
        <section class="sidebar__form">
            <h4 class="subtitle is-size-6"><?php esc_html_e('Proposer une recette', 'ocooking'); ?></h4>
            <form>
                <div class="field">
                    <label class="label"><?php esc_html_e('Recette', 'ocooking'); ?></label>
                    <div class="control has-icons-left">
                    <input class="input" type="text" placeholder="<?php esc_html_e('Recette', 'ocooking'); ?>">
                    <span class="icon is-small is-left">
                        <i class="fa fa-cutlery"></i>
                    </span>
                    </div>
                </div>
                <div class="field">
                    <label class="label"><?php esc_html_e('Email', 'ocooking'); ?></label>
                    <div class="control has-icons-left">
                    <input class="input" type="email" placeholder="<?php esc_attr_e('Votre Email', 'ocooking'); ?>">
                    <span class="icon is-small is-left">
                        <i class="fa fa-envelope"></i>
                    </span>
                    </div>
                </div>
                <div class="field">
                    <label class="label"><?php esc_html_e('Instructions', 'ocooking'); ?></label>
                    <div class="control">
                    <textarea class="textarea" placeholder="<?php esc_attr_e('Instructions', 'ocooking'); ?>"></textarea>
                    </div>
                </div>
                <div class="field">
                    <div class="control">
                    <label class="checkbox">
                        <input type="checkbox">
                        <?php esc_html_e('Je suis d\'accord pour que cette recette soit publiée sur oCooking', 'ocooking'); ?>
                    </label>
                    </div>
                </div>
                <div class="field is-grouped">
                    <div class="control">
                    <input type="submit" class="button is-primary" value="<?php esc_attr_e('Proposer', 'ocooking'); ?>">
                    </div>
                </div>
            </form>
        </section>
    </aside>