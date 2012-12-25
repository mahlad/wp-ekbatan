<?php 
wp_reset_query();
wp_reset_postdata();
$args = array( 'post_type' => 'contact', 'posts_per_page' =>1,'post_status' =>	'publish' );
	$loop=new WP_Query($args);
 ?>
 

	<div class="line"></div>
<section id="end">
		<div class="content-end">
			<div class="text-left">
				<?php 
				if($loop->have_posts()){
					$loop->the_post();
					$post_id=$post->ID;
				 ?>
				<h1 class="contactus">درباره ما</h1>
				<div class="txt">
					<div class="content-txt f13">
						<table>
							<tr>
								<td class="tel"></td>
								<td class="txt"><?php echo get_post_meta($post_id, 'phone',true);?></td>
							</tr>
							<tr>
								<td class="mobile"></td>
								<td class="txt"><?php echo get_post_meta($post_id, 'mobile',true); ?></td>
							</tr>
							<tr>
								<td class="fax"></td>
								<td class="txt"><?php echo get_post_meta($post_id, 'fax',true); ?></td>
							</tr>
							<tr>
								<td class="adrs"></td>
								<td class="txt"><?php echo get_post_meta($post_id, 'address',true); ?></td>
							</tr>
							<tr>
								<td class="adrs"></td>
								<td class="txt"><?php echo get_post_meta($post_id, 'email',true); ?></td>
							</tr>
						</table>
					</div>
				</div>
			</div>
			<div class="text-right txr">
				<h1 class="contactus">ارتباط با ما...</h1>
				<div class="contact">
				<?php echo get_post_meta($post_id, 'massage',true); }?>
					<br/>
					<?php 
					$args = array( 'post_type' => 'page', 'numberposts' => -1); 
						$pages = get_posts( $args );
						if ($pages) {
							foreach ( $pages as $post ) {
								setup_postdata($post);
								the_title();
								the_content();
								// the_attachment_link($post->ID, false);
								// the_excerpt();
							}
						}
					 ?>
					<!-- <form>
						<input type="text" class="name" id="name" />
						<input type="text" class="email" id="email" />
						<textarea class="textarea" id="texterea" placeholder="پیغام"></textarea>
						<input type="image" name="btnimg" id="btnimg" src="images/button_sendme.png" />
					</form> -->
				</div>
			</div>
		</div>
	</section>