<?php
add_theme_support( 'post-thumbnails' );
add_theme_support( 'menus' );
/*_-_-_-_-Marketting post type_-_-_-_-*/ 
add_action('init','create_marketting_type');
function create_marketting_type(){
	$labels=array(
		'name' => 'تبلیغات',
		'singular_name' => 'تبلیغات',
		'add_new' => 'افزودن تبلیغ',
		'add_new_item' => 'افزودن تبلیغ جدید',
		'edit_item' => 'ویرایش تبلیغ',
		'new_item' => 'تبلیغ جدید',
		'view_item' => 'نمایش تبلیغ',
		'search_items' => 'جستجوی تبلیغ',
		'not_found' => 'تبلیغ مورد نظر یافت نشد',
		'not_found_in_trash' => 'تبلیغ مورد نظر در زباله دان یافت نشد',
		'parent_item_colon' => 'تبلیغ',
		'menu_name' => 'تبلیغات'

		);
	$args=array(
		'label' => 'تبلیغات',
		'labels' => $labels,
		'public' => true,
		'exclude_from_search' => true,
		'publicly_queryable' => true,
		'show_ui' => true,
		'show_in_nav_menus' => true,
		'show_in_menu' => true,
		'menu_position' => 25,
		'capability_type' => 'post',
		'hierarchical' => false,
		'supports' => array('title','editor', 'thumbnail','excerpt'),
		'has_archive' => true,
		'rewrite' => array('slug'=>'marketting'),
		'query_var' => true,
		'can_export' => true
		);
	register_post_type('marketting', $args);
}
/*_-_-_-_-Comments post type_-_-_-_-*/ 
add_action('init','create_coments_type');
function create_coments_type(){
	$labels=array(
		'name' => 'ایده ها',
		'singular_name' => 'ایده ها',
		'add_new' => 'افزودن ایده',
		'add_new_item' => 'افزودن ایده جدید',
		'edit_item' => 'ویرایش ایده',
		'new_item' => 'ایده جدید',
		'view_item' => 'نمایش ایده',
		'search_items' => 'جستجوی ایده',
		'not_found' => 'ایده مورد نظر یافت نشد',
		'not_found_in_trash' => 'ایده مورد نظر در زباله دان یافت نشد',
		'parent_item_colon' => 'ایده',
		'menu_name' => 'ایده ها'

		);
	$args=array(
		'label' => 'ایده ها',
		'labels' => $labels,
		'public' => true,
		'exclude_from_search' => true,
		'publicly_queryable' => true,
		'show_ui' => true,
		'show_in_nav_menus' => true,
		'show_in_menu' => true,
		'menu_position' => 25,
		'capability_type' => 'post',
		'hierarchical' => false,
		'supports' => array('title','editor','comments'),
		'has_archive' => true,
		'rewrite' => array('slug'=>'coments'),
		'query_var' => true,
		'can_export' => true
		);
	register_post_type('coments', $args);
}

/*_-_-_-_-Gallery post type_-_-_-_-*/ 
add_action('init','create_gallery_type');
function create_gallery_type(){
	$labels=array(
		'name' => 'تصاویر',
		'singular_name' => 'تصاویر',
		'add_new' => 'افزودن تصویر',
		'add_new_item' => 'افزودن تصویر جدید',
		'edit_item' => 'ویرایش تصویر',
		'new_item' => 'تصویر جدید',
		'view_item' => 'نمایش تصویر',
		'search_items' => 'جستجوی تصویر',
		'not_found' => 'تصویر مورد نظر یافت نشد',
		'not_found_in_trash' => 'تصویر مورد نظر در زباله دان یافت نشد',
		'parent_item_colon' => 'تصویر',
		'menu_name' => 'تصاویر'

		);
	$args=array(
		'label' => 'تصاویر',
		'labels' => $labels,
		'public' => true,
		'exclude_from_search' => true,
		'publicly_queryable' => true,
		'show_ui' => true,
		'show_in_nav_menus' => true,
		'show_in_menu' => true,
		'menu_position' => 25,
		'capability_type' => 'post',
		'hierarchical' => false,
		'supports' => array('title','editor','thumbnail'),
		'has_archive' => true,
		'rewrite' => array('slug'=>'gallery'),
		'query_var' => true,
		'can_export' => true
		);
	register_post_type('gallery', $args);
}
/*_-_-_-_-Services post type_-_-_-_-*/ 
add_action('init','create_services_type');
function create_services_type(){
	$labels=array(
		'name' => 'خدمات',
		'singular_name' => 'خدمات',
		'add_new' => 'افزودن خدمات',
		'add_new_item' => 'افزودن خدمات جدید',
		'edit_item' => 'ویرایش خدمات',
		'new_item' => 'خدمات جدید',
		'view_item' => 'نمایش خدمات',
		'search_items' => 'جستجوی خدمات',
		'not_found' => 'خدمات مورد نظر یافت نشد',
		'not_found_in_trash' => 'خدمات مورد نظر در زباله دان یافت نشد',
		'parent_item_colon' => 'خدمات',
		'menu_name' => 'خدمات'

		);
	$args=array(
		'label' => 'خدمات',
		'labels' => $labels,
		'public' => true,
		'exclude_from_search' => true,
		'publicly_queryable' => true,
		'show_ui' => true,
		'show_in_nav_menus' => true,
		'show_in_menu' => true,
		'menu_position' => 25,
		'capability_type' => 'post',
		'hierarchical' => false,
		'supports' => array('title','editor'),
		'has_archive' => true,
		'rewrite' => array('slug'=>'services'),
		'query_var' => true,
		'can_export' => true
		);
	register_post_type('services', $args);
}
/*_-_-_-_-Article post type_-_-_-_-*/ 
add_action('init','create_articles_type');
function create_articles_type(){
	$labels=array(
		'name' => 'مقاله ها',
		'singular_name' => 'مقاله ها',
		'add_new' => 'افزودن مقاله',
		'add_new_item' => 'افزودن مقاله جدید',
		'edit_item' => 'ویرایش مقاله',
		'new_item' => 'مقاله جدید',
		'view_item' => 'نمایش مقاله',
		'search_items' => 'جستجوی مقاله',
		'not_found' => 'مقاله مورد نظر یافت نشد',
		'not_found_in_trash' => 'مقاله مورد نظر در زباله دان یافت نشد',
		'parent_item_colon' => 'مقاله',
		'menu_name' => 'مقاله ها'

		);
	$args=array(
		'label' => 'مقاله ها',
		'labels' => $labels,
		'public' => true,
		'exclude_from_search' => true,
		'publicly_queryable' => true,
		'show_ui' => true,
		'show_in_nav_menus' => true,
		'show_in_menu' => true,
		'menu_position' => 25,
		'capability_type' => 'post',
		'hierarchical' => false,
		'supports' => array('title','editor','comments'),
		'has_archive' => true,
		'rewrite' => array('slug'=>'articles'),
		'query_var' => true,
		'can_export' => true
		);
	register_post_type('articles', $args);
}
/*_-_-_-_-Massages post type_-_-_-_-*/ 
add_action('init','create_massages_type');
function create_massages_type(){
	$labels=array(
		'name' => 'پیام های نمایشی',
		'singular_name' => 'پیام های نمایشی',
		'add_new' => 'افزودن پیام نمایشی',
		'add_new_item' => 'افزودن پیام نمایشی جدید',
		'edit_item' => 'ویرایش پیام نمایشی',
		'new_item' => 'پیام نمایشی جدید',
		'view_item' => 'نمایش پیام نمایشی',
		'search_items' => 'جستجوی پیام نمایشی',
		'not_found' => 'پیام نمایشی مورد نظر یافت نشد',
		'not_found_in_trash' => 'پیام نمایشی مورد نظر در زباله دان یافت نشد',
		'parent_item_colon' => 'پیام نمایشی',
		'menu_name' => 'پیام های نمایشی'

		);
	$args=array(
		'label' => 'پیام های نمایشی',
		'labels' => $labels,
		'public' => true,
		'exclude_from_search' => true,
		'publicly_queryable' => true,
		'show_ui' => true,
		'show_in_nav_menus' => true,
		'show_in_menu' => true,
		'menu_position' => 24,
		'capability_type' => 'post',
		'hierarchical' => false,
		'supports' => array('title','editor'),
		'has_archive' => true,
		'rewrite' => array('slug'=>'massages'),
		'query_var' => true,
		'can_export' => true
		);
	register_post_type('massages', $args);
}
/*_-_-_-_-Contact post type_-_-_-_-*/ 
add_action('init','create_contact_type');
function create_contact_type(){
	$labels=array(
		'name' => 'اطلاعات تماس',
		'singular_name' => 'اطلاعات تماس',
		'edit_item' => 'ویرایش اطلاعات تماس',
		'view_item' => 'نمایش اطلاعات تماس',
		'menu_name' => 'اطلاعات تماس'
		);
	$args=array(
		'label' => 'اطلاعات تماس',
		'labels' => $labels,
		'description' => 'این قسمت فقط اطلاعات تماس خود را وارد نمایید',
		'public' => true,
		'exclude_from_search' => true,
		'publicly_queryable' => true,
		'show_ui' => true,
		'show_in_nav_menus' => true,
		'show_in_menu' => true,
		'menu_position' => 22,
		'capability_type' => 'page',
		'hierarchical' => false,
		'supports' => array('title'),
		'rewrite' => array('slug' => 'contact'),
		'has_archive' => true,
		'query_var' => true,
		'can_export' => true,

		);
	register_post_type('contact', $args);
}

/*_-_-_-_-Department taxonomy_-_-_-_-*/ 
$labels = array(
    'name'  => 'دپارتمان',
    'singular_name'  => 'دپارتمان ها',
    'search_items'  => 'جستجوی دپارتمان',
    'popular_items'  => 'بیشتر استفاده شده',
    'all_items'  => 'تمام دپارتمان',
    'parent_item'  => 'مادر دپارتمان',
    'edit_item'  => 'ویرایش دپارتمان',
    'update_item'  => 'بروزرسانی دپارتمان',
    'add_new_item'  => 'افزودن دپارتمان جدید',
    'new_item_name'    => 'دپارتمان جدید',
    'separate_items_with_commas'  => 'دپارتمان ها را با کاما جدا کنید',
    'add_or_remove_items'  => 'افزودن یا حذف دپارتمان',
    'choose_from_most_used'  => 'انتخاب از محبوبها'
);
$args=array(
	'label' => 'department',
	'labels' =>$labels,
	'public' => true,
	'show_in_nav_menus' => true,
	'show_ui' => true,
	'hierarchical' => true,
	'query_var' => true,
	

	);
register_taxonomy('department', array('services','gallery','articles','coments'), $args);
/*_-_-_-_-Upload metabox_-_-_-_-*/ 
add_action('post_edit_form_tag', 'update_edit_form'); 
add_action('load-post.php', 'metabox_setup' );
add_action('load-post-new.php', 'metabox_setup' );
add_action('save_post', 'metabox_save', 10, 2 );


function update_edit_form() {  
    echo ' enctype="multipart/form-data"';  
}

function metabox_setup() {
	add_meta_box(
		'gsp_post_meta2',
		'فایل متن کامل',	
		'metabox_content',		
		'articles',				
		'side',		
		'high'	
	);

}

function metabox_content($post){
	$profile_picture =  get_post_meta( $post->ID, 'profile_picture', true );
	if($profile_picture['url']){
		$img = $profile_picture['url'];
		echo '<div id="profile_picture"><a href="'.$img.'" target="_blank"><img src="'.$img.'"></a>
		</div>
		<br />';	
	}

?>
	<input id="wp_custom_attachment" name="wp_custom_attachment" value="بارگزاری" size="25" type="file">
 <?php
}


function metabox_save($post_id){
	if(!empty($_FILES['wp_custom_attachment']['name'])) {	
		$supported_types = array('image/gif','image/bmp','image/jpeg','image/png','application/pdf','application/msword');  		
		$arr_file_type = wp_check_filetype(basename($_FILES['wp_custom_attachment']['name']));  
		$uploaded_type = $arr_file_type['type'];  
		if(in_array($uploaded_type, $supported_types)) {  
			$upload = wp_upload_bits($_FILES['wp_custom_attachment']['name'], null, file_get_contents($_FILES['wp_custom_attachment']['tmp_name'])); 
			if(isset($upload['error']) && $upload['error'] != 0) {  
				//wp_die('There was an error uploading your file. The error is: ' . $upload['error']);  
			} else {
				unset($upload['error']);
				$upload['file'] = str_replace(chr(92),"/",$upload['file']);
				update_post_meta($post_id ,'profile_picture', $upload);  
			}
		} else {
			//wp_die("The file type that you've uploaded is not a PDF.");  
		}
	} 
}
/*_-_-_-_-Contact metabox_-_-_-_-*/ 
// 
add_action('add_meta_boxes','add_cnt_meta');
add_action('save_post','save_cnt_meta');

function add_cnt_meta(){
	add_meta_box('my_meta', 'فرم ثبت اطلاعات تماس','cnt_inner_meta_box','contact','advanced','default');
}
function cnt_inner_meta_box($post){
	wp_nonce_field(plugin_basename(__FILE__), 'wpnonce');
	$post_id=$post->ID;
	$name=get_post_meta($post_id,'fax',true);
	$phone=get_post_meta($post_id,'phone',true);
	$mobile=get_post_meta($post_id,'mobile',true);
	$email=get_post_meta($post_id,'email',true);
	$address=get_post_meta($post_id,'address',true);
	$massage=get_post_meta($post_id,'massage',true);
	?>
 	
 	<label for="phone_field">تلفن ثابت:</label></br><input type="text" name="phone_field" id="phone_field" value="<?php echo $phone; ?>" size="40"/></br>
 	<label for="mobile_field">تلفن همراه:</label></br><input type="text" name="mobile_field" id="mobile_field" value="<?php echo $mobile; ?>" size="40"/></br>
 	<label for="fax_field">فکس:</label></br><input type="text" name="fax_field" id="fax_field" value="<?php echo $name; ?>" size="40"/></br>
 	<label for="email_field">ایمیل:</label></br><input type="text" name="email_field" id="email_field" value="<?php echo $email; ?>" size="40"/></br>
 	<label for="address_field">آدرس:</label></br><input type="text" name="address_field" id="address_field" value="<?php echo $address; ?>" size="40"/></br>
 	<label for="massage_field">متن پیام:</label></br><textarea  rows="5" cols="40" name="massage_field" id="massage_field"><?php echo $massage; ?></textarea>
	<?php
	
}
function save_cnt_meta($post_id){
	if ( defined( 'DOING_AUTOSAVE' ) && DOING_AUTOSAVE ) 
      return;
	if('contact'==$_POST['post_type'])
	{
		if ( is_admin() ){
			$name=$_POST['fax_field'];
			$phone=$_POST['phone_field'];
			$mobile=$_POST['mobile_field'];
			$email=$_POST['email_field'];
			$address=$_POST['address_field'];
			$massage=$_POST['massage_field'];
			update_post_meta($post_id,'fax',$name);
			update_post_meta($post_id,'phone',$phone);
			update_post_meta($post_id,'mobile',$mobile);
			update_post_meta($post_id,'email',$email);
			update_post_meta($post_id,'address',$address);
			update_post_meta($post_id,'massage',$massage);
		}else return;
	}
	else
        return;
}





add_action('init','get_custom_coments_id');

function get_custom_coments_id(){
    global $current_user;
    get_currentuserinfo();

    if(isset($_POST['submit_btn'])){
        $time = current_time('mysql');
        $author_info=array();
        $comment_author=$_POST['comment_author'];
        $comment_author_email=$_POST['comment_author_email'];
        $comment_author_url=$_POST['comment_author_url'];
        $comment_content=$_POST['comment_content'];
        $comment_file=$_POST['comment_file'];
        $comment_post_ID=$_POST['comment_post_ID'];
        $data = array(
            'comment_post_ID' => $comment_post_ID,
            'comment_author' =>$comment_author,
            'comment_author_email' =>$comment_author_email,
            'comment_author_url' => $comment_author_url,
            'comment_content' => $comment_content,
            'comment_type' => '',
            'comment_parent' => 0,
            'user_id' => $current_user->ID,
            'comment_author_IP' => '127.0.0.1',
            'comment_agent' => 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.10) Gecko/2009042316 Firefox/3.0.10 (.NET CLR 3.5.30729)',
            'comment_date' => $time,
            'comment_approved' => 0
        );

        $comment_id=wp_insert_comment($data);
        
        $upload = wp_upload_bits($_FILES['comment_file']['name'], null, file_get_contents($_FILES['comment_file']['tmp_name'])); 
            if(isset($upload['error']) && $upload['error'] != 0) {  
                //wp_die('There was an error uploading your file. The error is: ' . $upload['error']);  
            } else {
                unset($upload['error']);
                $upload['file'] = str_replace(chr(92),"/",$upload['file']);
                add_comment_meta($comment_id, 'file_column',$upload);
                //update_post_meta($post_id ,'profile_picture', $upload);  


            }


        }
        function myplugin_comment_columns( $columns ){
			    $columns['file_column'] = __( 'فایل پیوست' );
			    return $columns;
			}
			add_filter( 'manage_edit-comments_columns', 'myplugin_comment_columns' );

			add_filter( 'manage_comments_custom_column', 'myplugin_comment_column', 10, 2 );

			function myplugin_comment_column( $column,$comment_id ){
			    if ( 'file_column' == $column ) {
			    if ( $meta = get_comment_meta($comment_id, $column , true ) ) {
			        print_r($meta);
			    }
			}
			}
  

}
// add_action('init','get_custom_coments_id');
// global $current_user;
// get_currentuserinfo();
// function get_custom_coments_id(){
// 	if(isset($_POST['submit_btn'])){
// 		$time = current_time('mysql');
// 		$author_info=array();
// 		$comment_author=$_POST['comment_author'];
// 		$comment_author_email=$_POST['comment_author_email'];
// 		$comment_author_url=$_POST['comment_author_url'];
// 		$comment_content=$_POST['comment_content'];
// 		$comment_file=$_POST['comment_file'];
// 		$comment_post_ID=$_POST['comment_post_ID'];
// 		$data = array(
// 		    'comment_post_ID' => $comment_post_ID,
// 		    'comment_author' =>$comment_author,
// 		    'comment_author_email' =>$comment_author_email,
// 		    'comment_author_url' => $comment_author_url,
// 		    'comment_content' => $comment_content,
// 		    'comment_type' => '',
// 		    'comment_parent' => 0,
// 		    'user_id' => $current_user->ID,
// 		    'comment_author_IP' => '127.0.0.1',
// 		    'comment_agent' => 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.0.10) Gecko/2009042316 Firefox/3.0.10 (.NET CLR 3.5.30729)',
// 		    'comment_date' => $time,
// 		    'comment_approved' => 0
// 		);

// 		$comment_id=wp_insert_comment($data);
// 		$comment_file=get_comment_meta($comment_id,'comment_file', false);
// 		print_r($comment_file);
// 	}
// }
// function add_custom_comment_field($comment_id){
  


//   		$upload = wp_upload_bits($_FILES['comment_file']['name'], null, file_get_contents($_FILES['comment_file']['tmp_name'])); 
// 			if(isset($upload['error']) && $upload['error'] != 0) {  
// 				//wp_die('There was an error uploading your file. The error is: ' . $upload['error']);  
// 			} else {
// 				unset($upload['error']);
// 				$upload['file'] = str_replace(chr(92),"/",$upload['file']);
// 				add_comment_meta($comment_id, 'my_custom_comment_field',$upload);
// 				//update_post_meta($post_id ,'profile_picture', $upload);  


// 			}
// }
// add_action('comment_post', 'add_custom_comment_field');
 ?>
