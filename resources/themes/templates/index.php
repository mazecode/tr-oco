<?php echo "Fuck you off blody scum. Silent's key";
exit; ?>

<div class="container" id="main">
    <div class="row">

        <?php if (have_posts()): ?>
            <?php while (have_posts()): the_post(); ?>
                <h1 class="col-md-12 page-title">
                    <?php the_title(); ?>
                </h1>

                <article class="page col-md-8" id="post-<?php the_ID(); ?>">
                    <div class="entry">
                        <?php the_content(); ?>
                    </div>
                </article>
            <?php endwhile; ?>
        <?php else: ?>
        <article class="page col-md-8 not-found">
            <div class="entry">
                <p class="lead">
                    <?php _e('Sorry, this page does not exist. Try searching for one.'); ?>
                </p>
                <?php get_search_form(); ?>
            </div>
        </article>
        <?php endif; ?>

        <?php get_sidebar(); ?>

    </div> <!-- .row -->
</div> <!-- .container --> 