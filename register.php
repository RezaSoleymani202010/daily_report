<?php
require "_load.php";
if (isset($_POST['username'],$_POST['email'],$_POST['password'])) {
    $username = $_POST['username'];
    $email = $_POST['email'];
    $password = $_POST['password'];
    $user_id= set_user($username, $email, $password);
    $_SESSION['user_id']=$user_id;
    redirect("panel.php");
}
?>
<form action="" method="post">
   username: <input type="text" name="username"><br>
 email:   <input type="text" name="email"><br>
  password:  <input type="text" name="password"><br>
    <input type="submit" name="submit"><br>
</form>
