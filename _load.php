<?php
include "_secret.php";
session_start();
try {
    $db=new PDO("mysql:host=".HOST.";dbname=".DBNAME,USERNAME,PASSWORD);

}catch (PDOException $e){
    echo "not connected";
}

function redirect($path){
    header("Location: ".$path);
    exit();
}
function auth_check(){
    if (!isset($_SESSION['user_id'])){
       redirect("login.php");
    }
}
function get_user($id){
    global $db;
    $query="select * from user where id=:id";
    $stmt=$db->prepare($query);
    $stmt->bindParam("id",$id);
    $stmt->execute();
    return $stmt->fetch(PDO::FETCH_ASSOC);
}
function user_id($username){
    global $db;
    $query="select id from user where username=:username";
    $stmt=$db->prepare($query);
    $stmt->bindParam("username",$username);
    $stmt->execute();
    return $stmt->fetch(PDO::FETCH_ASSOC);
};
function set_user($username,$email,$password){
    global $db;
    $query="insert into user (username,email,password) values (:username,:email,:password)";
    $stmt=$db->prepare($query);
    $stmt->bindParam("username",$username);
    $stmt->bindParam("email",$email);
    $stmt->bindParam("password",$password);
 if($stmt->execute()){
    return user_id($username)['id'];
 }
 else{
     return 0;
 }
}

function get_Allprojects(){
    global $db;
    $query="select name,id from project";
    $stmt=$db->prepare($query);
    $stmt->execute();
    $projects=$stmt->fetchAll();
    return $projects;
}
function get_products_of_project($project_id){
    global $db;
    $query="select * from product where project_id=:project_id";
    $stmt=$db->prepare($query);
    $stmt->bindParam("project_id",$project_id);
    $stmt->execute();
    $products=$stmt->fetchAll(PDO::FETCH_ASSOC);
    return $products;
}
function get_product($product_id){
    global $db;
    $query="select name,project_id from product where id=:id";
    $stmt=$db->prepare($query);
    $stmt->bindParam("id",$product_id);
    $stmt->execute();
    $product=$stmt->fetch(PDO::FETCH_ASSOC);
    return $product;
}
function get_project_by_product($product_id){
    global $db;
    $query="select id,name from project where project_id=:project_id";
    $stmt=$db->prepare($query);
    $stmt->bindParam("project_id",$product_id);
    $stmt->execute();
    $project=$stmt->fetch(PDO::FETCH_ASSOC);
    return $project;
}
function get_project_name($project_id){
    global $db;
    $query="select name from project where id=:project_id";
    $stmt=$db->prepare($query);
    $stmt->bindParam("project_id",$project_id);
    $stmt->execute();
    return $stmt->fetch(PDO::FETCH_ASSOC);
}
function save_daily_report($user_id,$project_id,$product_id,$entrance_time,$leaving_time,$work_time,$activity_description,$time,$created_at){

    global $db;
    $query="insert into reports(user_id,project_id,product_id,entrance_time,leaving_time,work_time,activity_description,time,created_at) 
values (:user_id,:project_id,:product_id,:entrance_time,:leaving_time,:work_time,:activity_description,:time,:created_at)";
    $stmt=$db->prepare($query);
    $stmt->bindParam("user_id",$user_id);
    $stmt->bindParam("project_id",$project_id);
    $stmt->bindParam("product_id",$product_id);
    $stmt->bindParam("entrance_time",$entrance_time);
    $stmt->bindParam("leaving_time",$leaving_time);
    $stmt->bindParam("work_time",$work_time);
    $stmt->bindParam("activity_description",$activity_description);
    $stmt->bindParam("time",$time);
    $stmt->bindParam("created_at",$created_at);
    if ($stmt->execute()){
        return 1;
    }else{
        return 0;
    }

}

if (isset($_SESSION['user_id'])){
    $user=get_user($_SESSION['user_id']);
    if ($user==null){
        unset($_SESSION['user_id']);
        redirect("login.php");

    }
}