<html>
<head>
</head>
    <title>Artist Manage</title>

<link rel="stylesheet" type="text/css" href="style.css">

<?php 
session_start();

if(!isset($_SESSION['Adminid']))
{
	echo "<script>window.location='login.php'</script>";
}

include("Adminheaderr.php"); 
?>
<body>
<span class="style4"><font color="#FFFFFF">
	<?php echo $_SESSION['Adminname'] ?>
</font></span>


<?php


$server    = "localhost";
$username  = "root";
$password  = "";
$dbname    = "online_music1";

$connect = mysqli_connect($server, $username, $password, $dbname);
if ($connect) {
	echo "";
} 
else {
	die(mysqli_connect_error());
	echo "Not Connected";
}

$uploadOk=1;
	
		if (isset($_POST["submit"]))
		{

$image=$_FILES['image']['name'];
			$tmpimage=$_FILES['image']['tmp_name'];

			$imageFileType = strtolower(pathinfo($image,PATHINFO_EXTENSION));

$extensions_arr = array("jpg","jpeg","png","gif");
 if ($_FILES["image"]["size"] > 500000) {																							//fill upload upto 500kb

  echo "Sorry, your file is too large.";
  $uploadOk = 0;
}

if ($uploadOk == 0) {
  echo "Sorry, your file was not uploaded.";
// if everything is ok, try to upload file
} else {
	// Check extension
	if( in_array($imageFileType,$extensions_arr) ){

move_uploaded_file($tmpimage,"Artist_image/".$image);


		$str="INSERT INTO artist(aname,atype,gender,image)VALUES('".$_REQUEST["aname"]."','".$_REQUEST["atype"]."','".$_REQUEST["txtgender"]."','$image')";		

			
	if (mysqli_query($connect, $str)) {
  echo "New record created successfully";
} else {
  echo 'Error: '.mysqli_error($connect);}
		}
		else{
		echo 'Error in uploading file - '.$_FILES['image']['name'].'  <br> Please upload jpg,jpeg,png,gif    format  only
';
	}}
		}
		?>
			<br>
			<br>
	<form name="form2"  method="post" enctype="multipart/form-data">
			<table align="center">

							      <center><span class="style12"><font color="#73ba87">ADMIN ARTIST MANAGE</font></span></center><br><br><br><br>

    		<tr>
     			<td><span class="style4"><font color="#FFFFFF">Artist name</font></span>
				</td>
      			<td><input type="text" name="aname" required /></td>
    		</tr><br>
		
    		<tr>
      			<td><span class="style4"><font color="#FFFFFF">Artist type</font></span></td>
      			<td>
        			<select name="atype" id="select">
        				<option value="Actor">Actor</option>
        				<option value="Composer">Composer</option>
        				<option value="Director">Director</option>
        				<option value="Producer">Producer</option>
        				<option value="Lyrics Writer">Lyrics Writer</option>
       					<option value="Singer">Singer</option>
        			</select>
      			</td>
    		</tr>
    		<tr>
        <td width="341"> <span class="style4"><font color="#FFFFFF">Gender</font></span></td>
        <td width="320" ><input type="radio" name="txtgender"  value="Male" />
		<span class="style5"><font color="#FFFFFF">Male</font></span>
		<input type="radio" name="txtgender" value="Female" />
		<span class="style5"><font color="#FFFFFF">Female</font></span>
		</td>
     </tr>

     	<tr>
        		<td><span class="style4"><font color="#FFFFFF">Image</font></span></td>
				<td><input type="file" name="image"/></td>
   			</tr><br>
			<tr>
				
   	 			<td colspan="2" align="center">
							<input type="submit" name="submit" value="SUBMIT"/>
					
							<input type="reset" name="btnReset" value="RESET" />
				</td>

			</tr>	</table>
  		
		
  			<table align="center" border="3" bordercolor="#CCCCC" margin="10" padding="10" width="700" height="700"><tr>
				<td><span class="style5"><font color="#00CCFF" size="4">Artist id</font></span></td>
				<td><span class="style5"><font color="#00CCFF" size="4">Artist name</font></span></td>
				<td><span class="style5"><font color="#00CCFF" size="4">Artist type</font></span></td>
				<td><span class="style5"><font color="#00CCFF" size="4">gender</font></span></td>
								<td><span class="style5"><font color="#00CCFF" size="4">Image</font></span></td>
<br><br><br><br><br><br>
			</tr>
			<?php
				
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
include("footeer.php");
?>
</body>
</html>

