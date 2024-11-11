<?php
$servername = "localhost";
$username = "root";
$password = "";

$connDB1 = new mysqli($servername, $username, $password, "DB1");
if ($connDB1->connect_error) {
    die("Connection failed to DB1: " . $connDB1->connect_error);
}

$connDB2 = new mysqli($servername, $username, $password, "DB2");
if ($connDB2->connect_error) {
    die("Connection failed to DB2: " . $connDB2->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $id = $_POST['id'];
    $name = $_POST['name'];
    $dept = "CSE";
    $major = $_POST['major'];

    if ($major == "AI") {
        $sql = "INSERT INTO student (id, name, dept, major) VALUES (?, ?, ?, ?)";
        $stmt = $connDB2->prepare($sql);
        $stmt->bind_param("isss", $id, $name, $dept, $major);
        if ($stmt->execute()) {
            echo "Data inserted into DB1 (AI).";
        } else {
            echo "Error inserting into DB1: " . $stmt->error;
        }
    } elseif ($major == "SOFTWARE") {
        $sql = "INSERT INTO student (id, name, dept, major) VALUES (?, ?, ?, ?)";
        $stmt = $connDB1->prepare($sql);
        $stmt->bind_param("isss", $id, $name, $dept, $major);
        if ($stmt->execute()) {
            echo "Data inserted into DB2 (SOFTWARE).";
        } else {
            echo "Error inserting into DB2: " . $stmt->error;
        }
    } else {
        echo "Invalid major selected!";
    }

    $stmt->close();
    $connDB1->close();
    $connDB2->close();
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Form</title>
</head>
<body>

<h2>Student Submission Form</h2>

<form method="POST" action="">
    <label for="id">Student ID:</label><br>
    <input type="text" id="id" name="id" required><br><br>

    <label for="name">Student Name:</label><br>
    <input type="text" id="name" name="name" required><br><br>

    <label for="name">Department:</label><br>
    <input type="text" id="dept" name="dept" required><br><br>

    <label for="major">Major:</label><br>
    <select id="major" name="major" required>
        <option value="AI">AI</option>
        <option value="SOFTWARE">SOFTWARE</option>
    </select><br><br>

    <input type="submit" value="Submit">
</form>

</body>
</html>
