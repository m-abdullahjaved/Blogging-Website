

<?php 
 if ($_SESSION['user_role']=='0'){
    header('location: index.php');
}
$id= $_GET['id'];

include 'config.php';
$sql= "DELETE FROM category WHERE category_id= $id";

if (mysqli_query($con,$sql)) {
    header('location: category.php') or die('Connection Failed');
}



?>