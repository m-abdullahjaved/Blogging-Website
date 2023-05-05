<?php
include 'config.php';

if (empty($_FILES['new-image']['name'])) {
    $filename= $_POST['old-image'];
}else{
    $errors= array();
       $filename= $_FILES['new-image']['name'];
       $file_size= $_FILES['new-image']['size'];
       $file_tmp= $_FILES['new-image']['tmp_name'];
       $file_type= $_FILES['new-image']['type'];
       $file_ext= end(explode('.',$filename));
       $extension= array('jpg','jpeg','png');

       if (in_array($file_ext,$extension)===false) {
          $errors[]= "This extension is not allowed. Only use JPEG or PNG";
          die();
       }

       if ($file_size > "2097152‬") {
           $errors[]= "File size must be smaller than 2 MB";
       }
       if (empty($errors)==true) {
           move_uploaded_file($file_tmp,'upload/'.$filename);
       }else{
           die('Must Upload Image');
       }
}

$post_id= $_POST['post_id'];
$post_title= $_POST['post_title'];
$post_desc= $_POST['postdesc'];
$post_category= $_POST['category'];

$sql= "UPDATE post SET title= '$post_title',description= '$post_desc', category= '$post_category', post_img= '$filename' WHERE post_id= $post_id ";

$result= mysqli_query($con,$sql);

if ($result) {
    header('location: post.php');
}
else{
    echo " Some Error Here";
}






?>