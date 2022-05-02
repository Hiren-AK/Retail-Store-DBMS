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
$sql = "SELECT Pword FROM store WHERE StoreID= $username";
$result = $conn->query($sql);

while($row = $result->fetch_assoc()) {
    if($row["Pword"] == $password){
        $t=time();
        $d = date("Y-m-d H:i:s",$t);
        $sql2 = "INSERT INTO GenericLogin VALUES($username,'Store', '$d')";
        if ($conn->query($sql2) === TRUE) {
          header("Location: store.html");
          exit;
        } 
        exit;
    }
    
    else{
      header("Location: index.html");
      exit;
    }
}

$conn->close();
?>