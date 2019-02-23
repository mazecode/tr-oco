<?php

/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package brix_portfolio
 */
?>
	</body>
	<footer class="container-fluid clearfix fixed-bottom">
		<div class="row">
			<div class="col pt-4">
				<p class="text-center">
					&copy; <?= date('Y'); ?> - <?= get_bloginfo('sitename'); ?>
				</p>
			</div>
		</div>
	</footer>

	<?php wp_footer(); ?>
</html>			
