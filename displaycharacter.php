<?php
$q=$_GET['charid'];
//$connection = mysqli_connect('localhost:8889', 'root', 'root', 'db_megaman');//mac
$connection = mysqli_connect('localhost', 'root', '', 'db_megaman');//pc
$sql="SELECT * FROM tbl_character WHERE character_id =".$q;
$result = mysqli_query($connection, $sql);
$row = mysqli_fetch_array($result);

print "<img src=\"images/".$row['character_photo']."\" alt=\"".$row['character_name']."\">";
print "<div id=\"character\"> <h2>".$row['character_name']."</h2>";
print "<h3>".$row['character_role']."</h3>";
print "<h3>".$row['character_game']."</h3>";
print "<h3>".$row['character_weapon']."</h3>";
print "<p>".$row['character_bio']."</p> </div>";
?>