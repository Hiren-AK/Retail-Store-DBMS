<?php
$servername = "localhost";
$username = "id18827428_user";
$password = "vishwesHHH@3";
$dbname = "id18827428_db";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$employeeID = filter_input(INPUT_POST, 'CustomerID');
$Fname = filter_input(INPUT_POST, 'Fname');
$Lname = filter_input(INPUT_POST, 'Lname');
$PhoneNum = filter_input(INPUT_POST, 'PhoneNum');
$Salary = filter_input(INPUT_POST, 'Salary');
$Experience = filter_input(INPUT_POST, 'Experience');


$sql = "UPDATE employee SET Fname = '$Fname', Lname = '$Lname', PhoneNum = $PhoneNum, Salary = '$Salary', Experience = '$Experience' WHERE employeeID = $employeeID";
if ($conn->query($sql) === TRUE) {
  header("Location: admin.html");
  exit;
} else {
  echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();

?>