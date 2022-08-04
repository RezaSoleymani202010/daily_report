<?php
include "_load.php";
if (isset($_POST['username'],$_POST["password"])){
    global $db;
    $password=$_POST['password'];
    $username=$_POST['username'];
    $email=$_POST['username'];
    $query="select * from user where password=:password and (username=:username or email=:email)";
    $stmt=$db->prepare($query);
    $stmt->bindParam("password",$password);
    $stmt->bindParam("username",$username);
    $stmt->bindParam("email",$email);
    $stmt->execute();
    $result=$stmt->fetch(PDO::FETCH_ASSOC);
if ($result!=null){
 $_SESSION['user_id']=$result['id'];
redirect("panel.php");
}else{
    exit("not find user");
}

}

?>

<form method="post" action="">
   name <input type="text" name="username"><br>
  password  <input type="text" name="password"><br>
    <input type="submit" name="submit">
</form>
<a href="register.php" >register</a>
