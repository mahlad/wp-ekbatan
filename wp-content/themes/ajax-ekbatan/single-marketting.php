<?php 
	get_header();
	wp_reset_query();
	wp_reset_postdata();
?>
	<section class="fancy">
		<article class="content-sp-market">
			<?php 
			the_title('<h1 style="font-size:26px;font-weight:bold;">','</h1>');
			the_content();
			 ?>
		</article>
		
	</section>
<?php
	get_footer();
?>