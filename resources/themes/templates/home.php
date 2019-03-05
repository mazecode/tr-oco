<?php get_header(); ?>

<?php include 'template-parts/slider.php' ?>

<?php  ?>

<div class="container pt-2">
    <div class="row portfolio-style-4 protfolio-column-3">
        <?php while (have_posts()) : the_post() ?>
        <div class="col-lg-4 col-md-4 col-xs-6 filter1 p-0 m-0">
            <div class="portfolio hover-style-04">
                <div class="portfolio-img">
                    <?= wp_get_attachment_image(tr_posts_field("photo"), 'card'); ?>
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
                        <li><a href="#">
                                <?php the_excerpt(); ?></a></li>
                        <li><a href="#">Development</a></li>
                    </ul>
                </div>
            </div>


            <!-- <a href="https://images.pexels.com/photos/62307/air-bubbles-diving-underwater-blow-62307.jpeg?auto=compress&cs=tinysrgb&h=650&w=940" class="fancybox" rel="ligthbox">
                    <img src="https://images.pexels.com/photos/62307/air-bubbles-diving-underwater-blow-62307.jpeg?auto=compress&cs=tinysrgb&h=650&w=940" class="zoom img-fluid " alt="">
                </a> -->
        </div>
        <?php endwhile; ?>
    </div>
</div>

<?php get_footer(); ?> 