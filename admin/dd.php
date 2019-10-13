<?php
$cat_id=$_GET['cat_id'];
require "config.php";
$q=$_GET["q"];

$sql=($conn,"SELECT * FROM subcategory WHERE cat_id ='$q'");

$result = mysqli_query($sql);

 


while($row = mysqli_fetch_array($result))
{
echo "<option>" . $row['subcategory'] . "</option>";
}
//echo "</select>";
?>