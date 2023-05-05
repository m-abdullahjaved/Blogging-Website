



<?php
 if ($_SESSION['user_role']=='0'){
    header('location: index.php');
}

$id= $_GET['id'];

 include 'config.php';
 
 $sql= "DELETE FROM user WHERE user_id= '$id' ";
 
 if (mysqli_query($con,$sql)){
     header('location: users.php');
 }

?>