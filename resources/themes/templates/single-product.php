<?php get_header(); ?>

<?php while (have_posts()) : the_post() ?>
    <div class="product">
        <div class="container-fluid p-0 m-0">
            <div class="product-header">
                <?= tr_posts_field(':img:full:photo'); ?>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <article class="col-12">
                    <?= wp_get_attachment_image((int)tr_posts_field(':img:full:photo')); ?>
                    <h2><?php the_title(); ?></h2>
                    <?php foreach (tr_posts_field('gallery') as $id) : 
                        echo wp_get_attachment_image((int)$id);
                    endforeach; ?>
                    <?php the_content(); ?>     
                </article>
            </div>
        </div>
    </div>
<?php endwhile; ?>

<?php get_footer(); ?>
