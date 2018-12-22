<?php get_header(); ?>

<style>
html,
body {
	height: 100vh;
	margin: 0px;
	padding: 0px;
}
</style>

<div id="menu-container" class="container-fluid h-100 tiles">
    <div class="row flex-row align-items-center h-100 w-100 position-absolute">
        <div id="logotype" class="mx-auto">
            <a href=""><img class="img-fluid" src="<?= wp_get_attachment_url(5) ?>" alt="Ocodesign Logotype"></a>
        </div>
    </div> 
    <div class="row flex-row p-0 h-100">
        <div id="projects" class="col-md-6 d-flex p-0 tile" data-scale="1.1" redirect-to="<?= get_permalink(get_option('page_for_posts')) ?>">
            <div class="d-flex my-auto mx-auto">
                <h2 class="text-primary display-2 text-light">Proyectos</h2>
            </div>
            <div class="video-bg position-absolute">
                <div id="player0" class="video"></div>
            </div>
        </div>
        <div id="products" class="col-md-6 d-flex p-0 tile" data-scale="1.1" redirect-to="#">
            <div class="d-flex my-auto mx-auto">
                <h2 class="text-primary display-2 text-light">Productos</h2>
            </div>
            <div class="video-bg position-absolute">
                <div id="player1" class="video"></div>
            </div>
        </div>
    </div>
</div>

<?php wp_footer();
