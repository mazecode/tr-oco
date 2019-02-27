<?php get_header(); ?>

<section class="container">
    <?php while (have_posts()) : the_post() ?>
        <h2><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h2>
        <article>
            <!-- <input type="color" name="fav-color" id="fav-color" value="<?php echo tr_posts_field('favourite_color'); ?>"> -->
            <?= wp_get_attachment_image((int)tr_posts_field('profile_picture')); ?>
            <?php the_content(); ?>     
        </section>
    <?php endwhile; ?>
</section>

<?php get_footer(); ?>
