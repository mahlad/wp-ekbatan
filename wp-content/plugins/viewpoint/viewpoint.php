<?php 
/*
Plugin Name: mahlad-ViewPoint 
Plugin URI: https://github.com/mahlad/mahlad-wp-plugins/blob/master/viewpoint.php
Description: 
Author: Mahla Delpak
Version: 0.1
Author URI: http://mahlad.ir
*/
add_action('admin_menu','register_viewpoint');
add_action('init','register_shortcode_viewpoint');
function register_shortcode_viewpoint(){
	add_shortcode('viewpoint','viewpoint_form');
}
//			[viewpoint]
function viewpoint_form($atts, $content = null){
	if(isset($_POST['usr_submit'])){
		$usr_name=$_POST['usr_name'];
		if(isset($_POST['usr_title']))
		$usr_title=$_POST['usr_title'];
	else 
		$usr_title='';
		$usr_email=$_POST['usr_email'];
		$usr_content=$_POST['usr_content'];
		$usr_file=$_POST['usr_file'];
		$usr_attachment=array($usr_file);
		$to=get_option('adm_email');
		$adm_title=get_option('adm_title');
		$adm_html=str_replace(array('\"',"\'"),array('"',"'"),get_option('adm_html'));
		add_filter('wp_mail_from',create_function('', 'return "'.$usr_email.'";'));
		add_filter('wp_mail_from_name',create_function('', 'return "'.$usr_name.'";'));
		add_filter('wp_mail_content_type',create_function('', 'return "text/html";'));
		$subject=$usr_title.$adm_title;
		$upload = wp_upload_bits($_FILES['wp_custom_attachment']['name'], null, file_get_contents($_FILES['wp_custom_attachment']['tmp_name'])); 
			if(isset($upload['error']) && $upload['error'] != 0) {  
				//wp_die('There was an error uploading your file. The error is: ' . $upload['error']);  
			} else {
				unset($upload['error']);
				$upload['file'] = str_replace(chr(92),"/",$upload['file']);
				update_post_meta($post_id ,'profile_picture', $upload);  
			}
		// move_uploaded_file($_FILES["usr_file"]["tmp_name"],WP_CONTENT_DIR .'/uploads/'.basename($_FILES['usr_file']['name']));
		// $attachments = array(WP_CONTENT_DIR ."/uploads/".$_FILES["usr_file"]["name"]);


		$mail_content = str_replace(array('%name%','%email%','%subject%','%content%','%file%'),array($usr_name,$usr_email,$usr_title,$usr_content,$attachments),$adm_html);
		
		
		wp_mail( $to, $subject, $mail_content );
		if(wp_mail( $to, $subject, $mail_content,$attachments ))
		echo "sent successfully"; 
	
	}
	$userData='
	<table>
		<caption>فرم ارسال نظر کاربر</caption>
		<form action="" method="post">
		<tr>
			<td><label for="usr_name">نام و نام خانوادگی:</label></td>
			<td><input type="text" name="usr_name" value="" /></td>
		</tr>
		<tr>
			<td><label for="usr_email">ایمیل:</label></td>
			<td><input type="text" name="usr_email" value="" /></td>
		</tr>
		<tr>
			<td><label for="usr_title">موضوع:</label></td>
			<td><input type="text" name="usr_title" value="" /></td>
		</tr>
		<tr>
			<td><label for="usr_content">محتوا:</label></td>
			<td><textarea name="usr_content"></textarea></td>
		</tr>
		<tr>
			<td><label for="usr_file">فایل:</label></td>
			<td><input type="file" name="usr_file"/></td>
		</tr>
		<tr>
			<td></td>
			<td><input type="submit" name="usr_submit" value="ارسال"></td>
		</tr>
		</form>
	</table>
	';
	return $userData;
}
function register_viewpoint(){
	add_menu_page('دیدگاه ها', 'دیدگاه ها', '8', 'viewpoint', 'admin_viewpoint_form', plugins_url('wpclass-20121111/images/icon.png'),'32');
}
function admin_viewpoint_form(){
	if(isset($_POST['adm_submit'])){
		update_option('adm_title',$_POST['adm_title']);
		update_option('adm_email',$_POST['adm_email']);
		update_option('adm_file',$_POST['adm_file']);
		update_option('adm_html',$_POST['adm_html']);
	}
	$adm_title=get_option('adm_title');
	$adm_email=get_option('adm_email');
	$adm_file=get_option('adm_file');
	$adm_html=get_option('adm_html');
?>
<div class="admcnt">
	<table>
		<form action="" method="post">
			<tr>
				<td>
					<label for="adm_email">ایمیل گیرنده:</label>
				</td>
				<td>
					<input type="text" name="adm_email" value="<?php echo $adm_email; ?>"/>
				</td>
			</tr>
			<tr>
				<td>
					<label for="adm_title">عنوان ایمیل های دریافتی:</label>
				</td>
				<td>
					<input type="text" name="adm_title" value="<?php echo $adm_title ?>"/>
				</td>
			</tr>
			<tr>
				<td>
					<label for="adm_html">قالب html:</label>
				</td>
				<td>
					<textarea cols="100" rows="10" name="adm_html"><?php echo $adm_html; ?></textarea>
					<br />
				    %name% = نام ارسال کننده نامه
				    <br />
				    %email% = ایمیل ارسال کننده
				    <br />
				    %subject% = عنوان نامه
				    <br />
				    %content% = متن نامه
				    <br />
				    %file% = فایل پیوست
				    <br />
				</td>
			</tr>
			<tr>
			<tr>
				<td>
					<label for="adm_file">فایل پیوست:</label>
				</td>
				<td>
					<input type="file" name="adm_file" value="<?php //echo $adm_file ?>"/>
				</td>
			</tr>
				<td></td>
				<td>
					<input type="submit" name="adm_submit" value="ذخیره"/>
				</td>
			</tr>
		</form>
	</table>
</div>
<?php
}
 ?>