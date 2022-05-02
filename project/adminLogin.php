<?php
$servername = "localhost";
$username = "id18827428_user";
$password = "vishwesHHH@3";
$dbname = "id18827428_db";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$username = filter_input(INPUT_POST, 'username');
$password = filter_input(INPUT_POST, 'password');
$sql = "SELECT Pword FROM admins WHERE AdminID= $username";
$result = $conn->query($sql);

while($row = $result->fetch_assoc()) {
    if($row["Pword"] == $password){
      header("Location: admin.html");
      exit;
    }
    
    else{
      header("Location: index.html");
      exit;
    }
}

$conn->close();
?>