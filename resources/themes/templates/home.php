<?php get_header(); ?>

<?php include 'template-parts/slider.php' ?>

<div class="container pt-2">
    <div class="row portfolio-style-4 protfolio-column-3">
        <div class="grid" style="position: relative; height: 1415.95px;">
            <?php while (have_posts()): the_post() ?>
            <div class="grid-item filter1" style="position: absolute; left: 0%; top: 0px;">
                <div class="portfolio hover-style-04">
                    <div class="portfolio-img">
                        <?php echo tr_posts_field(':img:full:photo'); ?>
                        <div class="portfolio-view">
                            <a class="venobox vbox-item" data-gall="gall1" href="<?= the_permalink(); ?>"></a>
                        </div>
                    </div>
                    <div class="portfolio-title">
                        <h3><a href="=" <?= the_permalink(); ?>">
                                <?= tr_posts_field('product_title'); ?></a></h3>
                        <ul class="portfolio-cat">
                            <li><a href="#">
                                    <?php the_excerpt(); ?></a></li>
                            <li><a href="#">Development</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <?php endwhile; ?>
        </div>
    </div>
</div>

<?php get_footer(); ?> 