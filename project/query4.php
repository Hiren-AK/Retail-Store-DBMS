<?php
$servername = "localhost";
$username = "id18827428_user";
$password = "vishwesHHH@3";
$dbname = "id18827428_db";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT supplier.supplierID, AVG(costPU) as MedianCostPricePerUnit
FROM supplier
JOIN supplies
ON supplier.supplierID = supplies.supplierID
GROUP BY supplierID";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
  while($row = $result->fetch_assoc()) {
    foreach ($row as $value) {
        echo $value . ' ';
    }
    echo '<br>';
  }
}

$conn->close();
?>