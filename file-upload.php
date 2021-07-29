<?php 
    include 'config/database.php'; 

    if(isset($_POST['submit'])){
        
        $uploadsDir = "uploads/";
        $allowedFileType = array('jpg','png','jpeg','jfif');
        if (!empty(array_filter($_FILES['fileUpload']['name']))) {
       
            foreach($_FILES['fileUpload']['name'] as $id=>$val){
                $fileName        = $_FILES['fileUpload']['name'][$id];
                $tempLocation    = $_FILES['fileUpload']['tmp_name'][$id];
                $targetFilePath  = $uploadsDir . $fileName;
                $fileType        = strtolower(pathinfo($targetFilePath, PATHINFO_EXTENSION));
                $uploadDate      = date('Y-m-d H:i:s');
                $uploadOk = 1;

                if(in_array($fileType, $allowedFileType)){
                        if(move_uploaded_file($tempLocation, $targetFilePath)){
                            $sqlVal = "('".$fileName."', '".$uploadDate."')";
                        } else {
                            $response = array(
                                "status" => "alert-danger",
                                "message" => "File coud not be uploaded."
                            );
                        }
                    
                } else {
                    $response = array(
                        "status" => "alert-danger",
                        "message" => "Only .jpg, jfif, .jpeg and .png file formats allowed."
                    );
                }
                if(!empty($sqlVal)) {
                    $insert = $conn->query("INSERT INTO user (images, date_time) VALUES $sqlVal");
                    if($insert) {
                        $response = array(
                            "status" => "alert-success",
                            "message" => "Files successfully uploaded."
                        );
                    } else {
                        $response = array(
                            "status" => "alert-danger",
                            "message" => "Files coudn't be uploaded due to database error."
                        );
                    }
                }
            }

        } else {
            $response = array(
                "status" => "alert-danger",
                "message" => "Please select a file to upload."
            );
        }
    } 
?>