<?php get_header(); ?>

<?php  ?>

<div class="container bg-white">
    <div class="row portfolio-style-4 protfolio-column-3">
        <h2 class="display-5 d-none"><?= strtoupper(get_post_type()) ?></h2>
        <?php while (have_posts()) : the_post() ?>
        <div class="col-md-4 col-xs-6 filter2 p-0 m-0" style="hoverflow: hidden">
            <div class="portfolio hover-style-04">
                <div class="portfolio-img">
                    <?= tr_posts_field(":img:card:photo"); ?>
                    <div class="portfolio-view">
                        <a class="venobox vbox-item" data-gall="gall1" href="<?= the_permalink(); ?>"></a>
                    </div>
                </div>
                <div class="portfolio-title">
                    <h3>
                        <a href="<?= the_permalink(); ?>">
                            <?= tr_posts_field('product_title'); ?>
                        </a>
                    </h3>
                    <ul class="portfolio-cat">
                        <li><a href="#"><?php the_excerpt(); ?></a></li>
                        <li><a href="#">Development</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <?php endwhile; ?>
    </div>
</div>

<?php get_footer();  ?> 