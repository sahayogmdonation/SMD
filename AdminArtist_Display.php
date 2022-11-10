<html>
<head>
</head>
<link rel="stylesheet" type="text/css" href="style.css">

<?php 
session_start();
if(!isset($_SESSION['Adminid']))
{
	echo "<script>window.location='login.php'</script>";
}

include("Adminheader.php"); 
?>
<body>
<span class="style4"><font color="#FFFFFF">
	<?php echo $_SESSION['Adminname'] ?>
</font></span>
	<form method="post">
  		<table align="center" border="2" bordercolor="#CCCCC" width="700" height="150">
			<center>
					<span class="style12">
   					<font color="#edf7f5">Display Artist Detail</font></span>
			</center>
			<br>
			<br>
			<tr>
				<td><span class="style5"><font color="#00CCFF" size="4">Artist_id</font></span></td>
				<td><span class="style5"><font color="#00CCFF" size="4">Artist_name</font></span></td>
				<td><span class="style5"><font color="#00CCFF" size="4">Artist_Type</font></span></td>
				<td><span class="style5"><font color="#00CCFF" size="4">Gender</font></span></td>
				<td><span class="style5"><font color="#00CCFF" size="4">Image</font></span></td>

				
			</tr>
			<?php
$server    = "localhost";
$username  = "root";
$password  = "";
$dbname    = "online_music";

$connect = mysqli_connect($server, $username, $password, $dbname);
if ($connect) {
	echo "";
} 
else {
	die(mysqli_connect_error());
	echo "Not Connected";
}
					$str="select * from artist";
				$result = mysqli_query($connect, $str);
					  while($row = mysqli_fetch_assoc($result))
					{
			?>
			<tr>
				<td><span class="style5"><font color="#FFFFFF" size="4"><?php echo $row["aid"]; ?></font></span></td>
				<td><span class="style5"><font color="#FFFFFF" size="4"><?php echo $row["aname"]; ?></font></span></td>
				<td><span class="style5"><font color="#FFFFFF" size="4"><?php echo $row["atype"]; ?></font></span></td>
				<td><span class="style5"><font color="#FFFFFF" size="4"><?php echo $row["gender"]; ?></font></span></td>
				<td><img height="120px" width="120px" src="Artist_image/<?php echo$row["image"];?>">  </td>

			</tr>
			<?php
				}	
			?>
		</table>
	</form>	
<?php
include("footer.php");
?>
</body>
</html>

