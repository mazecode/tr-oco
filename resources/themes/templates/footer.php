</body>

<?php if (!is_front_page()): ?>
<footer class="container-fluid">
    <div class="footer-style-4">
        <div class="footer-bottom pt-5 pb-5">
            <div class="container">
                <div class="row">
                    <div class="col-md-5 col-sm-5 col-xs-12">
                        <div class="copyright text-left">
                            <p>&copy;
                                <?= date('Y'); ?> <a href="#">
                                    <?= get_bloginfo('sitename'); ?></a>, All Rights Reserved.</p>
                        </div>
                    </div>
                    <div class="col-md-2 col-sm-2 col-xs-12">
                        <div class="logo m-0 footer-logo-2 text-center">
                            <a href="/">
                                <?= get_bloginfo('sitename'); ?><span>.</span></a>
                        </div>
                    </div>
                    <div class="col-md-5 col-sm-5 col-xs-12">
                        <div class="footer-socila-area">
                            <ul class="list-inline social-style-3_ text-right">
                                <li class="list-inline-item"><a class="btn btn-link" href="#"><i class="fab fa-twitter"></i></a></li>
                                <li class="list-inline-item"><a class="btn btn-link" href="#"><i class="fab fa-facebook-f"></i></a></li>
                                <li class="list-inline-item"><a class="btn btn-link" href="#"><i class="fab fa-instagram"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
<?php endif; ?>

<?php wp_footer(); ?>

</html> 