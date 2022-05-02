<?php
$servername = "localhost";
$username = "id18827428_user";
$password = "vishwesHHH@3";
$dbname = "id18827428_db";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$employeeID = filter_input(INPUT_POST, 'employeeID');
$Fname = filter_input(INPUT_POST, 'Fname');
$Lname = filter_input(INPUT_POST, 'Lname');
$PhoneNum = filter_input(INPUT_POST, 'PhoneNum');
$Salary = filter_input(INPUT_POST, 'Salary');
$Experience = filter_input(INPUT_POST, 'Experience');

$sql = "INSERT INTO customer VALUES ($employeeID , '$Fname' , '$Lname' ,'$PhoneNum' , $Salary , $Experience)";
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