<?php 
session_start();
$term_slug=$_SESSION['term_slug'];
wp_reset_query();
wp_reset_postdata();
if($term_slug=='kanoon')
	$post_id=77;
else 
	$post_id=73;
 ?>
<?php
 $args = array( 
 	'post_type' => 'coments',
 	'include'         =>$post_id ,
 	'category'        =>$term_slug ,
 	'post_status'     => 'publish'
 	); 
	$pages = get_posts( $args );
	if ($pages) {
		foreach ( $pages as $post ) {
			setup_postdata($post);
			echo "<p style='font-size:22px'>";
			the_title();
			echo "</p><br />";
			// comment_form($post_id);
			// comments_template();

			$arg=array('post_id' => $post_id);
			$comments = get_comments($arg);
			$coun=0;
			the_content();
?>

	<form action="" method="post" id="commentform">
			<table>
				<tr>
					<td>
						<label for="author">نام (لازم)</label>
					</td>
					<td>
						<input type="text" name="comment_author" id="author" value="" size="22" tabindex="1" aria-required='true' />
					</td>
				</tr>
				<tr>
					<td>
						<label for="email">ایمیل (لازم)</label>
					</td>
					<td>
						<input type="text" name="comment_author_email" id="email" value="" size="22" tabindex="2" aria-required='true' />
					</td>
				</tr>
				<tr>
					<td>
						<label for="url">وبلاگ</label>
					</td>
					<td>
						<input type="text" name="comment_author_url" id="url" value="" size="22" tabindex="3" />
					</td>
				</tr>
			</table>
				

		<!--<p><small><strong>XHTML:</strong> می‌توانید از این دستورات استفاده نمایید: <code>&lt;a href=&quot;&quot; title=&quot;&quot;&gt; &lt;abbr title=&quot;&quot;&gt; &lt;acronym title=&quot;&quot;&gt; &lt;b&gt; &lt;blockquote cite=&quot;&quot;&gt; &lt;cite&gt; &lt;code&gt; &lt;del datetime=&quot;&quot;&gt; &lt;em&gt; &lt;i&gt; &lt;q cite=&quot;&quot;&gt; &lt;strike&gt; &lt;strong&gt; </code></small></p>-->
		<textarea name="comment_content" id="comment" cols="58" rows="10" tabindex="4"></textarea>
		<input type="file" name="comment_file"/>
		<input name="submit_btn" type="submit" id="submit" tabindex="5" value="فرستادن دیدگاه" />
		<input type='hidden' name='comment_post_ID' value='<?php echo $post_id; ?>' id='comment_post_ID' />
		<input type='hidden' name='comment_parent' id='comment_parent' value='0' />
		
		</form>
<table style="color:#fff; font-size:18px">
 <?php
				foreach($comments as $comment) :
					echo '<tr>';
						echo '<th>نام نویسنده :</th>';
						echo'<td>'.($comment->comment_author).'<td/>';
					echo '</tr>';
					echo '<tr>';
						echo '<th>تاریخ:</th>';
						echo '<td>'.($comment->comment_date).'<td/>';
					echo '</tr>';
					echo '<tr class="brd-bottom">';
						echo '<th>متن:</th>';
						echo '<td>'.($comment->comment_content).'<td/>';
					echo '</tr>';
					//comment_form($post_id);
					$coun++;
				endforeach;
		}
		//echo $coun;
		?>
		<!-- <section class="form-idea"> -->
		
		<!-- </section> -->
		<?php
		
	} 
	
 ?>
</table>