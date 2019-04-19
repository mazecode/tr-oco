<?php get_header(); ?>

<style>
    .product-header {
        background-image: url("<?= wp_get_attachment_image_url((int)tr_posts_field('photo'), 'full'); ?>");
        background-position: center center;
        background-repeat: no-repeat;
        background-size: cover;
    }
</style>

<?php while (have_posts()) : the_post() ?>
    <div class="product">
        <div class="container-fluid p-0 m-0">
            <div class="product-header"></div>
        </div>

        <div class="container">
            <div class="row">
                <article class="col-12">
                    <img class="d-none" src="<?= wp_get_attachment_image_url((int)tr_posts_field('photo'), 'post-thumbnail') ?>" class="img-fluid"/>
                    <h2><?php the_title(); ?></h2>
                    
                    <?php if (tr_posts_field('gallery') != 0) : ?>
                        <div class="slider">
                            <?php foreach (tr_posts_field('gallery') as $id) : ?>
                                <div class="slider-image <?= $id ?>">
                                    <img data-lazy="<?= wp_get_attachment_image_url((int)$id, 'post-thumbnail') ?>" data-lightbox="<?= wp_get_attachment_image_url((int)$id, 'full') ?> ?>" class="img-fluid"/>
                                </div>
                            <?php endforeach; ?>
                        </div>
                        <div class="slider-arrows d-none d-md-block">
                                <button id="btnPrev" class="btn btn-link fa-2x"><i class="fas fa-chevron-left"></i></button>
                                <button id="btnNext" class="btn btn-link fa-2x float-right"><i class="fas fa-chevron-right"></i></button>
                            </div>
                    <?php endif; ?>
                    <?= the_content(); ?>
                </article>
            </div>
        </div>
    </div>
<?php endwhile; ?>

<?php get_footer(); ?>