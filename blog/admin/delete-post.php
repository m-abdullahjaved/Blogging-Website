<?php
include 'config.php';
$id= $_GET['id'];
$catid=$_GET['catid'];

$sql1= "SELECT * FROM post WHERE post_id= $id";
$result1= mysqli_query($con,$sql1);
$row= mysqli_fetch_assoc($result1);

// Unlink function is used to delete files

unlink("upload/".$row['post_img']);


$sql= "DELETE FROM post WHERE post_id=$id;";
$sql.= "UPDATE category SET post= post - 1 WHERE category_id= $catid";

$result= mysqli_multi_query($con,$sql);

if ($result) {
    header('location: post.php');
}
else{
    echo " Not Deleted";
}







?>