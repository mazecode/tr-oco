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
	<footer class="container-fuid">
		<div class="row flex">
			<div class="col-12">
				<p class="text-center">
					&copy; <?= date('Y'); ?> - <?= get_bloginfo('sitename'); ?>
				</p>
			</div>
		</div>
	</footer>

	<?php wp_footer(); ?>
</html>			
