<?php
include 'config.php';

$conn = mysql_connect($servername, $username, $password);

if (!$conn) {
		die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT discount, status FROM promocodes WHERE promocode='".$_GET['promocode']."';";

mysql_select_db($dbname);
$result = mysql_query($sql, $conn);

if (!$result) {
		echo "Promocode not valid!";
} else {
		while($row = mysql_fetch_array($result, MYSQL_ASSOC))
				{
							if($row['status'] == 0)
											echo "Code expired!";
									else
													echo "You have %".$row['discount']." discount!";
								}
}

mysql_close($conn);
?>
