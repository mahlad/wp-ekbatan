<?php
session_start();
$term_slug=$_SESSION['term_slug'];
wp_reset_query();
wp_reset_postdata();

$args = array('post_type'=>'services','tax_query' => array( array('taxonomy' => 'department', 'field' => 'slug','terms' =>$term_slug)));
$loop=new Wp_Query($args);
if($loop->have_posts()){
	$loop->the_post();
	echo "<p style='font-size:22px'>";
			the_title();
		echo "</p>";
		echo "<br/>";
	the_content();
}
 ?>
