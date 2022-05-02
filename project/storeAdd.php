<?php
$servername = "localhost";
$username = "id18827428_user";
$password = "vishwesHHH@3";
$dbname = "id18827428_db";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$StoreID = filter_input(INPUT_POST, 'StoreID');
$PhoneNum = filter_input(INPUT_POST, 'PhoneNum');
$Email = filter_input(INPUT_POST, 'Email');
$Pword = filter_input(INPUT_POST, 'Pword');

$sql = "INSERT INTO customer VALUES ($StoreID , '$PhoneNum', '$Email' , '$Pword')";
if ($conn->query($sql) === TRUE) {
    header("Location: admin.html");
    exit;
  } else {
    echo "Error: " . $sql . "<br>" . $conn->error;
  }
$conn->close();

header("Location: admin.html");
exit;
?>