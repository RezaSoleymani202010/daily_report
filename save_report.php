<?php
require "_load.php";
//var_dump($_POST['project']);
$product_id=$_POST['product'];
$project_id=$_POST['project'];
$project_name=get_project_name($project_id)['name'];
$product_name=get_product($product_id)['name'];
//var_dump($_POST['activity_description']);
$entrance_hour=$_POST['entrance_hour'];
$entrance_minute=$_POST['entrance_minute'];
$leaving_hour=$_POST['leaving_hour'];
$leaving_minute=$_POST['leaving_minute'];
$entrance=($entrance_hour*60)+($entrance_minute);
$leaving=($leaving_hour*60)-$leaving_minute;
$work_hours=intval(($leaving-$entrance)/60);
$work_minutes=intval(($leaving-$entrance)%60);

$user_id=$_SESSION['user_id'];
$time=time();
$created_at=$time;
$activity_description=$_POST['activity_description'];
$entrance_time=$entrance_hour.":".$entrance_minute;
$leaving_time=$leaving_hour.":".$leaving_minute;
$work_time=$work_hours.":".$work_minutes;
$save_report=save_daily_report($user_id,$project_id,$product_id,$entrance_time,$leaving_time,$work_time,$activity_description,$time,$created_at);
if ($save_report==1){
    echo "save successfully";
}else
    echo "not saved";

?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<p name="user_activity">user Activity:<b><?=get_user($_SESSION['user_id'])['username']?></b></p><br>
<!--<p name="status_project_product">Project:<b>--><?//=$project_name?><!--</b>__Product:<b>--><?//=$product_name?><!--</b></p><br>-->
<table>
    <tr>
        <td>کاربر</td>
        <td>پروژه</td>
        <td>محصول</td>
        <td>زمان ورود</td>
        <td>زمان خروج </td>
        <td>ساعت کارکرد</td>
        <td>تاریخ</td>

    </tr>
    <tr>
        <td><?=get_user($user_id)['username']?></td>
        <td><?=$project_name?></td>
        <td><?=$product_name?></td>
        <td><?=$entrance_time?></td>
        <td><?=$leaving_time?> </td>
        <td><?=$work_time?></td>
        <td><?php echo date("y/m/d",$time)?></td>

    </tr>
</table>
<h3>شرح فعالیت :</h3><p><b style="border-style: groove;padding: 10px"><?=$activity_description?></b></p>
<br><br><br>
<a style="padding: 20px;text-decoration: none;color: black;font-size: xxx-large;
font-family: Algerian;background-color: #2aa593;margin-left: 30%;
border-radius: 10px;
" href="panel.php" >اتمام </a>
</body>
</html>
