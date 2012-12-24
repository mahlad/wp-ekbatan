 	<section class="main">
 		<div class="left time">
			<span id="clock">&nbsp;</span>
		</div>
		<div class="left date">
			<?php 
			echo jdate('l jS F Y');
			 ?>
		</div>
		<div class="logo">
			<h1>ekbatan</h1>
		</div>
		<div class="census">
			<div class="content-census">
				<p >کاربران آنلاین:</p>
				<h4>
					<?php echo wp_statistics_useronline(); ?>
				</h4>
				<p>بازدید امروز: </p><h4><?php echo wp_statistics_today(); ?></h4>
				<p>بازدید این هفته :</p><h4><?php echo wp_statistics_week(); ?></h4>
				<p>کل بازدیدها :</p><h4><?php echo wp_statistics_total(); ?></h4>
			</div>
			<div class="icon-census">
				<div class="icon-up"></div>
			</div>
		</div>
		<div class="main-txt ">
			<div class="fade-txt ">
				<?php 
				wp_reset_query();
				wp_reset_postdata();
				$args = array('post_type'=>'massages');
				$loop=new Wp_Query($args);
				if($loop->have_posts()){
					while($loop->have_posts()){
						$loop->the_post();
						$content = get_the_content('Read more');
						//print $content;
						echo "<h3>".$content."</h3>";
					}
				}else echo 'هیچ نوشته ای وجود ندارد';
				 ?>
				<!-- <h3>Thank you for discovering me. This website is the virtual home of mine. I always had the passion to be creative in some way and  wanted to pursue it.
	        I figured, it was about time to see what i could do and find which avenue to take to be successful.</h3>	
	        <h3>Thank you for discovering me. This website is the virt55555555555555ual home of mine. I always had the passion to be creative in some way and  wanted to pursue it.
	        I figured, it was about time to see what i could do and find which avenue to take to be successful.222222222222</h3>	 -->
			</div>
		</div>
		
			<?php 
			wp_nav_menu(array(
				'menu'            => 'فهرست اصلی', 
				'container'       => 'div', 
				'container_class' => 'pr2', 
				// // 'container_id'    => ,
				// 'menu_class'      => 'menu', 
				// 'menu_id'         => ,
				'echo'            => true,
				'fallback_cb'     => 'wp_page_menu',
				'before'          => '<div class="buttonekbatan">',
				'after'           => '</div>',
				'link_before'     =>'' ,
				'link_after'      => '',
				'depth'           => 0,
				'walker'          => ''));
			 ?>
	</section>
	<div class="location-main-btn cover"></div>
	<section id="button">
		<ul id="main-menu">