<?php
/*
Plugin Name: simple contact 
Plugin URI: 
Description:
Author: parsa
Version: 1.0
Author URI: 
*/

add_action('admin_menu', 'op_register_custom_menu_page');
add_action( 'init' , 'op_register_shortcodes');

function op_register_shortcodes(){
   add_shortcode('simple-contact', 'op_contact_form');
}

//  		[simple-contact title=تماس با ما id=1] محتوا [/simple-contact]
//			[simple-contact]

function op_contact_form($atts, $content = null) {
	if(isset($_POST['op_submit'])){
		$name = $_POST['sc_name'];
		$email = $_POST['sc_email'];
		$subject = $_POST['sc_subject'];
		$content = $_POST['sc_content'];
		
		// options
		$to = get_option( "op_email" );
		$op_title = get_option( "op_title" );
		$op_html = str_replace(array("\'",'\"'),array("'",'"'),get_option( "op_html" ));
		$mail_subject = $op_title . $subject;
		
		add_filter('wp_mail_from',create_function('', 'return "'.$email.'";'));
		add_filter('wp_mail_from_name',create_function('', 'return "'.$name.'";'));
		add_filter('wp_mail_content_type',create_function('', 'return "text/html";'));
		
		$mail_content = str_replace(array('%name%','%email%','%subject%','%content%'),array($name,$email,$subject,$content),$op_html);
		
		
		wp_mail( $to, $mail_subject, $mail_content ); 
	
	}
	
	
	$out = '
	<form action="" method="post">
	<table width="100%" border="0" cellspacing="5" cellpadding="5">
      <tr>
        <th width="200" scope="row">نام:</th>
        <td><input type="text" name="sc_name" value="" /></td>
      </tr>
      <tr>
        <th width="200" scope="row">ایمیل:</th>
        <td><input type="text" name="sc_email" value="" /></td>
      </tr>
      <tr>
        <th scope="row">عنوان:</th>
        <td><input type="text" name="sc_subject" value="" /></td>
      </tr>
      <tr>
        <th scope="row">متن:</th>
        <td><textarea name="sc_content" cols="60" rows="4"></textarea></td>
      </tr>
	  <tr>
        <th scope="row"></th>
        <td><input type="submit" name="op_submit" value="ارسال" ></td>
      </tr>
    </table>
	</form>
	';

	return $out;
}

function op_register_custom_menu_page() {
   add_menu_page('تماس با ما', 'تماس با ما', '8', 'simple-contact', 'op_main_page', plugins_url('wpclass-20121111/images/icon.png'));
}


function op_main_page(){
	
	if(isset($_POST['op_submit'])){
		update_option( "op_email", $_POST['op_email'] );
		update_option( "op_title", $_POST['op_title'] );
		update_option( "op_html", $_POST['op_html'] );		
	}
	
	$op_email = get_option( "op_email" );
	$op_title = get_option( "op_title" );
	$op_html = str_replace(array("\'",'\"'),array("'",'"'),get_option( "op_html" ));
	//$op_email = get_option( "op_html" );
?>
<div class="wrap">
<form action="" method="post">
	<table width="100%" border="0" cellspacing="5" cellpadding="5">
  <tr>
    <th width="200" scope="row">ایمیل مدیر: </th>
    <td><input type="text" name="op_email" value="<?php echo $op_email ?>" /></td>
  </tr>
  <tr>
    <th scope="row">عنوان دلخواه:</th>
    <td><input type="text" name="op_title" value="<?php echo $op_title ?>" /></td>
  </tr>
  <tr>
    <th valign="top" scope="row">قالب HTML:</th>
    <td><textarea name="op_html" cols="100" rows="10"><?php echo $op_html ?></textarea>
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
    <th></th>
    <td><input type="submit" name="op_submit" value="ذخیره" class="button" /></td>
  </tr>
</table>
</form>
</div>

<?php	
}

?>

