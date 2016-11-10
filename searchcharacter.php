<?php

	$q=$_GET['searchstring'];

	if($q!=NULL) {
		//$connection = mysqli_connect('localhost', 'root', 'root', 'db_megaman');//mac
		$connection = mysqli_connect('localhost', 'root', '', 'db_megaman');//pc

		$sql="SELECT * FROM tbl_character WHERE character_name LIKE '%".$q."%'";//the % is used to fill in the rest of a result or a wild card
		$result = mysqli_query($connection, $sql);
		$numrows = mysqli_num_rows($result);

		if($numrows > 0) 
		{
			while($row = mysqli_fetch_array($result)) {
			 print "<a href=\"#\"  onclick=\"displayInfo(".$row['character_id'].")\" ><img src=\"images/".$row['character_thumb']."\" width=\"100\" alt=\"".$row['character_name']."\"> ".$row['character_name']."</a>";
			 }

		}else
		{
			print "<h5>No results match your search</h5>";
		}
	}
?>