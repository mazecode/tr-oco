<?php get_header(); ?>

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">

<div class="container">
    <div class="col-xs-12">
        <div class="conract-area-bottom">
            <h3 class="main-contact">Contact US</h3>
            <div class="contact-us-details">
                <div class="row text-center">
                    <!-- <div class="col-sm-5 col-xs-12">
                        <div class="address-part cud-top">
                            <span aria-hidden="true" class="icon-map"></span>Cantonto Road, House#26, Road#31, London.
                        </div>
                    </div> -->
                    <!-- <div class="col-sm-3 col-xs-12">
                        <div class="phone-part cud-top">
                            <span aria-hidden="true" class="icon-phone"></span>+993-5648695
                        </div>
                    </div> -->
                    <div class="col-sm-12 col-xs-12">
                        <!-- <div class="mail-part cud-top"> -->
                        <i class="far fa-envelope"></i> info@ocodesign.es
                        <!-- </div> -->
                    </div>
                </div>
            </div>
            <?php 
            $form = tr_form()->useJson();
            $form->useURL('POST', '/contact/mail');
            $form->setRenderSetting('raw');
            $form->setPopulate(false);
            echo $form->open(['id' => 'contact-forms', 'class' => 'form-inline']);
            ?>
            <div class="row">

                <div class="col-md-6 col-sm-6 col-xs-12">
                    <div class="main-input">
                        <?= $form->text('name', ['placeholder' => 'Nombre *', 'required' => true]) ?>
                    </div>
                </div>
                <div class="col-md-6 col-sm-6 col-xs-12">
                    <div class="main-input mrg-eml mrg-contact">
                        <?= $form->text('email', ['placeholder' => 'Email *', 'type' => 'email', 'required' => true]) ?>
                    </div>
                </div>
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="main-input mt-20 mb-20">
                        <?= $form->text('subjet', ['placeholder' => 'Asunto']) ?>
                    </div>
                </div>
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="text-leave2">
                        <?= $form->textarea('message', ['placeholder' => 'Escribe tu mensaje aquí...']) ?>

                        <button class="submit" type="submit">Enviar Mensaje</button>
                    </div>
                </div>
            </div>
            <?php $form->close(); ?>
            <p class="form-messege"></p>
        </div>
    </div>
</div>

<?php get_footer(); ?> 