<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="cz"><head>

<meta http-equiv="Content-language" content="cs">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="description" content=" ">
<meta name="keywords" content=" ">
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
<link rel="icon" href="favicon.ico" type="image/x-icon">
<meta name="author" content="Kl?ra Frolichov?, Sunlight webdesign">
<meta name="Copyright" content="Kl?ra Frolichov?, Sunlight webdesign 2007">
<meta name="design" content="Sunlight webdesign - http://www.sunlight.cz, info@sunlight.cz">
<link rel="stylesheet" type="text/css" href="default.css" title="default">

</head>
<?php
session_start();
include("config.php");
extract($_REQUEST);
$id=$_SESSION['eid'];
$itemno=$_REQUEST['itemno'];
if(isset($send))
  {
  $pname=$_REQUEST['m1'];
  $itemno=$_REQUEST['m2'];
  $price=$_REQUEST['m3'];
  $size=$_REQUEST['sel'];
  $uname=$_REQUEST['t1'];
  $ac_no=$_REQUEST['t2'];
  $mob_no=$_REQUEST['t3'];
  $add=$_REQUEST['t4'];
  $bank=$_REQUEST['sel2'];
  $city=$_REQUEST['t6'];
  $order_no=ord.rand(100,500);
 if(mysqli_query($conn,"insert into orders values('$pname','$itemno','$price','$size','$uname','$ac_no','$mob_no','$add','$bank','$city','$order_no')"))
    {
	 echo "<script>location.href='ordersent.php?order=$order_no'</script>";
	} 
  }
	
if(isset($log)=='out')
{
session_destroy();
header("location:index.php");
}
else if($id=="")
{
header("location:index.php");
}
	
?>
<body>
<div id="WholePage">
<div id="Inner">
<div id="Container" style="border:groove;border-color:red">
<div id="CentralPart">
<div><br/><center><h2><font face="Lucida Handwriting" size="+2" color="#00CCFF">Welcome 
<?php
$sel=mysqli_query($conn,"select * from register where id='$id'");
  $arr=mysqli_fetch_array($sel);
  echo $arr['title']."&nbsp;".$arr['fname'];
?>
</font></h2></center>
<h2 align="right"><a href="?log=out"><font color="#0099FF">LogOut</font></a></h2>
</div>
<div style="width:25%;float:right">
<br><br><br><br>
<img src="usepics/7.jpg">
</div>

<center><h2><font face="Lucida Handwriting" size="+1" color="#00CCFF">Order Form</font></h2></center>
<fieldset style="background:#CC99CC;width:50%">
<br><br>
	<?php
	$sel=mysqli_query($conn,"select * from items where itemno='$itemno'");
    $mat=mysqli_fetch_array($sel);
	?>
<form method="post" name="f1" onSubmit="return vali()">
<table width="366" border="0" align="center">

  <tr>
    <td><div align="center"><strong><font size="+1" face="Comic Sans MS">Product Name: </font></strong></div></td>
    <td><label>
    <input name="m1" type="text" id="m1" onChange="return fnam()" readonly="readonly" value="<?php echo $mat['desc'];?>">

    </label></td>
  </tr>
  <tr>
    <td width="164"><div align="center"><font size="+1" face="Comic Sans MS"><b> Item No:</b></font></div></td>
    <td width="192">
      
        <input name="m2" type="text" id="m2" onChange="return fnam()" readonly="readonly" value="<?php echo $mat['itemno'];?>">    </td>
  </tr>
  <tr>
    <td><div align="center"><font size="+1" face="Comic Sans MS"><strong>Price:</strong></font></div></td>
    <td><input name="m3" type="text" id="m3" onChange="return lnam()" readonly="readonly" value="Rs<?php echo $mat['price'];?>">  </td>
  </tr>
  <tr>
    <td><div align="center"><font size="+1" face="Comic Sans MS"><b>&nbsp;Size:</b> </font></div></td>
    <td><label>
      <select name="sel" id="sel">
        <option value="Small" selected>Small</option>
        <option value="Medium">Medium</option>
        <option value="Large">Large</option>
        <option value="Xtra Large">Xtra Large</option>
      </select>
    </label></td>
  </tr>
  <tr>
    <td><div align="center"><font size="+1" face="Comic Sans MS"><b>&nbsp;User Name  : </b></font></div></td>
    <td><input name="t1" type="text" id="t1" onChange="return email()"></td>
  </tr>
  <tr>
    <td><div align="center"><font size="+1" face="Comic Sans MS"><b>&nbsp;Account No: </b> </font></div></td>
    <td><input name="t2" type="text" id="t2" onChange="return pass()"></td>
  </tr>
  <tr> <td><div align="center"><font size="+1" face="Comic Sans MS"><b>Mobile no: </b></font></div></td>
    <td><input name="t3" type="text" id="t3" onChange="return phone()"></td>
  </tr>
  <tr>
    <td><div align="center"><font size="+1" face="Comic Sans MS"><strong>Address:</strong></font></div></td>
    <td><label>
      <textarea name="t4" id="t4" value="return add()"></textarea>
    </label></td>
  </tr>
  <tr>
    <td><div align="center"><font size="+1" face="Comic Sans MS"><strong>Bank:</strong></font></div></td>
    <td><label>
      <select name="sel2" id="sel2">
        <option value="SBBJ">SBBJ</option>
        <option value="SBI" selected>SBI</option>
        <option value="ICICI">ICICI</option>
        <option value="HDFC">HDFC</option>
        <option value="PNB">PNB</option>
        <option value="Axis Bank"> Axis Bank</option>
      </select>
    </label></td>
  </tr>
  <tr>
    <td><div align="center"><font size="+1" face="Comic Sans MS"><strong>City:</strong></font></div></td>
    <td><input name="t6" type="text" id="t6" onChange="return coun()"></td>
  </tr>
  <tr>
    <td colspan="2"><label><br>
    <center>
      <input name="send" type="submit" id="send" value="Send">
    </center>
    </label></td>
    </tr>
</table>
</form>
</fieldset>
</div>

</div>




<div id="Bottom">
<p class="down"><b>Copyright &copy; Fashion Shop, Design by:Priya Gupta</b></p>
</div>
</div>
</div>
</div>
</div>

</body></html>