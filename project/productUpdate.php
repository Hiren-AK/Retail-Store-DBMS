<?php
$servername = "localhost";
$username = "id18827428_user";
$password = "vishwesHHH@3";
$dbname = "id18827428_db";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$ProductID = filter_input(INPUT_POST, 'ProductID');
$ProductName = filter_input(INPUT_POST, 'ProductName');
$ProductType = filter_input(INPUT_POST, 'ProductType');
$PricePU = filter_input(INPUT_POST, 'PricePU');


$sql = "UPDATE product SET ProductName = '$ProductName', ProductType = '$ProductType', PricePU = $PricePU WHERE ProductID = $ProductID";
if ($conn->query($sql) === TRUE) {
  header("Location: admin.html");
  exit;
} else {
  echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();

?>