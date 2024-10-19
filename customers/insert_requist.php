<?php
include_once '../shared/config.php';

if (isset($_POST['submit'])) {
    $full_name = $_POST['full_name'];
    $country = $_POST['country'];
    $age = $_POST['age'];
    $phone = $_POST['phone'];
    $gender = $_POST['gender'];
    

    if(empty($_FILES['image']['name'])){
        $image_name = 'def.jpg';
    }else{
        //image code
        $image_name = rand(0,255).rand(0,255).$_FILES['image']['name'];
        $tmp_name = $_FILES['image']['tmp_name'];
        $location = "./upload/$image_name";
        move_uploaded_file($tmp_name,$location);
        
    }




    $insert = "INSERT INTO customers VALUES(null,'$full_name','$country',$age,'$phone','$gender','$image_name')";
    $i = mysqli_query($connect, $insert);

    if ($i) {
        header('location:./index.php');
    } else {
        echo "False Insert";
    }
}
