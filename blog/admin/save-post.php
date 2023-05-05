<?php
    include 'config.php';
   if (isset($_FILES['fileToUpload'])) {
       $errors= array();
       $filename= $_FILES['fileToUpload']['name'];
       $file_size= $_FILES['fileToUpload']['size'];
       $file_tmp= $_FILES['fileToUpload']['tmp_name'];
       $file_type= $_FILES['fileToUpload']['type'];
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
  session_start();
  $post_title= $_POST['post_title'];
  $postdesc= $_POST['postdesc'];
  $category= $_POST['category'];
  $author= $_SESSION['user_id'];
  $date= date("d M, Y");

  $sql= "INSERT INTO post(title,description,category,post_date,author,post_img) VALUES ('$post_title','$postdesc',$category,'$date',$author,'$filename');";
  $sql .= "UPDATE category SET post= post + 1 WHERE category_id= '$category'";

  if (mysqli_multi_query($con,$sql)) {
      header('location: post.php');
  }else{
      echo('POST IS NOT UPLOADED');
  }





?>