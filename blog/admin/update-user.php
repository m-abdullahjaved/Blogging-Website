



<?php include "header.php";
 if ($_SESSION['user_role']=='0'){
    header('location: index.php');
}
    include 'config.php';
   
    if (isset($_POST['submit'])) {
    
    $user_id= $_POST['user_id'];
    $f_name= $_POST['f_name'];
    $l_name= $_POST['l_name'];
    $username= $_POST['username'];
    $role= $_POST['role'];

    $sql1= "UPDATE user SET user_id='$user_id', first_name='$f_name', last_name='$l_name', username='$username', role= '$role' WHERE user_id='$user_id'";

    if (mysqli_query($con,$sql1)) {
        header('location: users.php');
    }else{
        echo "Not Updated";
    }
}

?>
  <div id="admin-content">
      <div class="container">
          <div class="row">
              <div class="col-md-12">
                  <h1 class="admin-heading">Modify User Details</h1>
              </div>
              <div class="col-md-offset-4 col-md-4">
              <?php
              
               $user_id= $_GET['id'];
               $sql= "SELECT * FROM user WHERE user_id= '$user_id' ";
               $result= mysqli_query($con,$sql);

               while ($row=mysqli_fetch_assoc($result)) {
               
                
            ?> 
                  <!-- Form Start -->
                  <form  action="<?php $_SERVER['PHP_SELF'];   ?>" method ="POST">
                      <div class="form-group">
                          <input type="hidden" name="user_id"  class="form-control" value="<?php  echo $row['user_id']; ?>" placeholder="" >
                      </div>
                          <div class="form-group">
                          <label>First Name</label>
                          <input type="text" name="f_name" class="form-control" value="<?php  echo $row['first_name']; ?>" placeholder="" required>
                      </div>
                      <div class="form-group">
                          <label>Last Name</label>
                          <input type="text" name="l_name" class="form-control" value="<?php  echo $row['last_name']; ?>" placeholder="" required>
                      </div>
                      <div class="form-group">
                          <label>User Name</label>
                          <input type="text" name="username" class="form-control" value="<?php  echo $row['username']; ?>" placeholder="" required>
                      </div>
                      <div class="form-group">
                          <label>User Role</label>
                          <select class="form-control" name="role" value="<?php echo $row['role']; ?>">
                             <?php
                             if ($row['role']==1) {
                               echo '<option value="0">Normal User</option>';
                               echo '<option value="1" selected>Admin</option>';
                             }else{
                                echo '<option value="0" selected>Normal User</option>';
                                echo '<option value="1">Admin</option>';
                               
                             }

                              ?>
                          </select>
                      </div>
                      <input type="submit" name="submit" class="btn btn-primary" value="Update" required />
                  </form>
               <?php  } ?>
                  <!-- /Form -->
              </div>
          </div>
      </div>
  </div>
<?php include "footer.php"; ?>
