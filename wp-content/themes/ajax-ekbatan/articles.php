<?php
session_start();
$term_slug=$_SESSION['term_slug'];
wp_reset_query();
wp_reset_postdata();

$args = array('post_type'=>'articles','tax_query' => array( array('taxonomy' => 'department', 'field' => 'slug','terms' =>$term_slug)));
$counter=0;
$loop=new Wp_Query($args);
?>
<section class="container-article">
<?php
if($loop->have_posts()){
	$loop->the_post();
	$counter++;
	echo '<article>';
		echo "<p style='font-size:22px'>";
			the_title();
		echo "</p>";
			if($counter<8)
			echo '<p>'.the_content('ادامه مطلب').'</p>';
	echo '</article>';
} 

?>
</section>