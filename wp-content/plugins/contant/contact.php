
<?php 
/*
Plugin Name: mahlad-ContactPlugin 
Plugin URI: https://github.com/mahlad/mahlad-wp-plugins/blob/master/contact.php
Description: 
Author: Mahla Delpak
Version: 0.1
Author URI: http://mahlad.ir
*/
add_action('admin_menu','register_custom_menu');
add_action('init','register_shortcode_menu');
function register_shortcode_menu(){
	add_shortcode('contact','user_contact_form');
}
//  		[contact title=تماس با ما id=1] محتوا [/contact]
//			[contact]
function user_contact_form($atts, $content = null){
	if(isset($_POST['usr_submit'])){
		$usr_name=$_POST['usr_name'];
		if(isset($_POST['usr_title']))
		$usr_title=$_POST['usr_title'];
	else 
		$usr_title='';
		$usr_email=$_POST['usr_email'];
		$usr_content=$_POST['usr_content'];
		$to=get_option('adm_email');
		$adm_title=get_option('adm_title');
		$adm_html=str_replace(array('\"',"\'"),array('"',"'"),get_option('adm_html'));
		add_filter('wp_mail_from',create_function('', 'return "'.$usr_email.'";'));
		add_filter('wp_mail_from_name',create_function('', 'return "'.$usr_name.'";'));
		add_filter('wp_mail_content_type',create_function('', 'return "text/html";'));
		$subject=$usr_title.$adm_title;
		$mail_content = str_replace(array('%name%','%email%','%subject%','%content%'),array($usr_name,$usr_email,$usr_title,$usr_content),$adm_html);
		
		
		wp_mail( $to, $subject, $mail_content );
		if(wp_mail( $to, $subject, $mail_content ))
		echo "sent successfully"; 
	
	}
	$userData='
		
		<form action="" method="post">
			<label for="usr_name"></label>
			<input class="name" type="text" name="usr_name" value="" />
			<label for="usr_email"></label>
			<input class="email"type="text" name="usr_email" value="" />
		
			<label for="usr_content"></label></td>
			<textarea class="textarea"name="usr_content"></textarea><br />
			<input type="submit" name="usr_submit" value="ارسال">
		
		</form>
	
	';
	return $userData;
}
function register_custom_menu(){
	add_menu_page('تماس با ما', 'تماس با ما', '8', 'contact', 'admin_contact_form', plugins_url('wpclass-20121111/images/icon.png'),'31');
}
function admin_contact_form(){
	if(isset($_POST['adm_submit'])){
		update_option('adm_title',$_POST['adm_title']);
		update_option('adm_email',$_POST['adm_email']);
		update_option('adm_html',$_POST['adm_html']);
	}
	$adm_title=get_option('adm_title');
	$adm_email=get_option('adm_email');
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
				</td>
			</tr>
			<tr>
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