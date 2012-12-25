<?php 
session_start();
wp_reset_query();
wp_reset_postdata();
$term_slug=$_SESSION['term_slug'];
$ar_permalink=array();
$ar_thumbnail=array();
$counter=0;
$args = array('post_type'=>'gallery','tax_query' => array( array('taxonomy' => 'department', 'field' => 'slug','terms' =>$term_slug)));
$loop=new Wp_Query($args);
if($loop->have_posts()){
    
    $loop->the_post();
    $post_id=$post->ID;
    //echo $post_id;
}
 ?>
<section class="marketing">

<div class="gallery">
  <ul>
    <?php 
      $arg=array(
          'numberposts' =>'-1',
          'orderby '=> 'menu_order', // This ensures images are in the order set in the page media manager  
              'order'=> 'ASC',  
              'post_mime_type' => 'image', // Make sure it doesn't pull other resources, like videos  
              'post_parent' => $post_id, // Important part - ensures the associated images are loaded 
              'post_status' => null, 
              'post_type' => 'attachment'
              ); 
        $images=get_children($arg);
        if($images){
          foreach ($images as $img) {
            $img_src=wp_get_attachment_image_src($img->ID,'full');
            $thumb_src=wp_get_attachment_image_src($img->ID,'thumbnail');
            echo '<li><a href="'.$img_src[0].'"  rel="lightbox[group1]" >';
            echo '<img src="'.$thumb_src[0].'" alt="" />
            </a></li>';
            // echo "<div class='right' style=\"background-image:url('$img_src[0]');\"></div>";
          }
        }else echo 'هیچ عکسی در این مجموعه وجود ندارد';
     ?>
    
  </ul>
</div>
</section>