<?php
include "_load.php";
auth_check();
$projects=get_Allprojects();
$flag=0;
if (isset($_POST['project'],$_POST['project_submit'])){
   $project_id=$_POST['project'];
   $products=get_products_of_project($project_id);
   $flag=1;
}



?>

<p name="user_activity">user Activity:<b><?=get_user($_SESSION['user_id'])['username']?></b></p><br>

<?php if ($flag==0){ ?>
<b>select your project</b>:
<form action="" method="post">
<select name="project" >
    <?php foreach ($projects as $project){?>
    <option value="<?=$project['id']?>"><?=$project['name']?></option>
  <?php }  ?>
</select>
    <input type="submit" name="project_submit">
</form>
<?php } ?>

<?php if ($flag==1){ ?>
    <b>select your product</b>:
    <form action="activity.php" method="post">
        <select name="product" >
            <?php foreach ($products as $product){?>
                <option value="<?=$product['id']?>"><?=$product['name']?></option>
            <?php }  ?>
        </select>
        <input type="submit" name="product_submit">
    </form>
<?php } ?>
