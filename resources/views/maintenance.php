<?php get_header() ?>

<style>
html,
body {
	height: 100vh;
	margin: 0px;
	padding: 0px;
}
</style>
<div class="container-fluid h-100 clearfix">
    <div class="row h-100">
        <div class="col-md-5 col-xs-12">
            
            <div id="content" class="row h-100 bg-white-80">
                    <header class="col-md-12 align-self-start">
                        <img src="<?= wp_get_attachment_url(5) ?>" class="pt-3 pl-3 logo" alt="Oco Design Logotype">
                    </header>
                    <main class="col-md-12 align-self-center">
                        <h2 class="display-4 text-primary">Estamos actualizando <br>nuestros proyectos!</h2>
                        
                        <p><br>Dejanos tú email y te avisamos...</p>
                       
                        <?php 
                        $form = tr_form()
                            ->useJson();
                        $form->useURL('POST', '/contact/send');
                        $form->setRenderSetting('raw');
                        $form->setPopulate(false);
                        echo $form->open(['id' => 'form_contact', 'class' => 'form-inline']);
                        ?>
                            <div class="input-group w-100 input-effect">
                                <div class="input-group-prepend">
                                    <div class="input-group-text"> <i class="fas fa-at"></i> </div>
                                </div>
                                <?= $form->text('email', ['class' => 'form-control effect-19', 'aria-label' => '', 'aria-describedby' => 'btnsubmit', 'required' => true])->setPopulate(false) ?>
                                <label for="email">Email</label>
                                <span class="focus-border"></span>                                
                                <div class="input-group-append">
                                    <button id="btnsubmit" type="submit" class="btn btn-primary btn-lg text-white">Enviar</button>
                                </div>
                            </div>
                        <?php $form->close(); ?>
                    </main>
                    <footer class="col-md-12 align-self-end">
                        <p class="social">
                            <span class="align-middle"></span>
                            <a href="https://es.linkedin.com/in/estermedinaperez" class="align-middle external linkedin" target="_blank" rel="noopener noreferrer"><i class="fab fa-linkedin-in"></i></a>
                            <a href="https://twitter.com/ocodesign_" class="align-middle external twitter" target="_blank" rel="noopener noreferrer"><i class="fab fa-twitter"></i></a>
                            <a href="mailto:info@ocodesign.es?subject=contacto&message=Hola+Ocodesing+:)" class="align-middle email"><i class="far fa-envelope"></i></a>
                        </p>                    
                    </footer>
                </div>
            </div>
        </div>
    </div>
</div>
<div id="overlay"></div>
</body>


<?php wp_footer(); ?>
</html>			

<?php die; ?>
