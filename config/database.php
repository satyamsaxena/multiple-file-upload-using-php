<?php

    $hostname = "localhost";
    $username = "root";
    $password = "";

    try {
        $conn = new PDO("mysql:host=$hostname;dbname=image-upload-php", $username, $password);

        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    } catch(PDOException $e) {
        echo "Database connection failed: " . $e->getMessage();
    }

?>