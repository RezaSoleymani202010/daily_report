<?php
require "_load.php";
auth_check();
if (isset($_POST['product'],$_POST['product_submit'])){
    $product_id=$_POST['product'];
    $product=get_product($product_id);
    $project_id=$product['project_id'];
    $project_name=get_project_name($project_id)['name'];
$product_name=$product["name"];
}


?>
<!---->
<p name="user_activity">user Activity:<b><?=get_user($_SESSION['user_id'])['username']?></b></p><br>
<p name="status_project_product">Project:<b><?=$project_name?></b>__Product:<b><?=$product_name?></b></p><br>
<b>entrance time:</b>&nbsp &nbsp &nbsp &nbsp &nbsp      <b>leaving time:</b>

<form action="save_report.php" method="post" id="report_form">
    <input name="product" type="hidden" value="<?=$product_id?>"/>
    <input name="project" type="hidden" value="<?=$project_id?>"/>
<span>
    <select name="entrance hour" >
    <?php for ($hour=8;$hour<20;$hour++){ ?>
    <option value="<?=$hour?>"><?=$hour."h"?>
        </option>
    <?php } ?>
</select>:
<select name="entrance minute" >
    <?php for ($minute=0;$minute<60;$minute++){ ?>
        <option value="<?=$minute?>"><?=$minute."m"?>
        </option>
    <?php } ?>
</select>
    &nbsp&nbsp
    <select name="leaving hour" >
        <?php for ($hour=8;$hour<20;$hour++){ ?>
            <option value="<?=$hour?>"><?=$hour."h"?>
            </option>
        <?php } ?>
    </select>:
    <select name="leaving minute" >
        <?php for ($minute=0;$minute<60;$minute++){ ?>
            <option value="<?=$minute?>"><?=$minute."m"?>
            </option>
        <?php } ?>
    </select><br><br>
</span>

    <input style="margin-left: 400px;height: 50px" type="submit" value="ذخیره گزارش" name="time_submit">
</form>
<div name="activity_description" style="direction: ltr">
        <textarea style="width: 500px;color: blue" placeholder="فعالیت خود را بنویسید..." type="text" name="activity_description" form="report_form"></textarea>
    </div>