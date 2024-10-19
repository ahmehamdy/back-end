<?php
include_once '../shared/config.php';

if (isset($_GET['edite'])) {
    $id = $_GET['edite'];
    $select = "SELECT * FROM customers where id =$id ";
    $data = mysqli_query($connect, $select);
    $row = mysqli_fetch_assoc($data);

    if (isset($_POST['update'])) {
        $id = $_POST['id'];
        $full_name = $_POST['full_name'];
        $country = $_POST['country'];
        $age = $_POST['age'];
        $phone = $_POST['phone'];
        $gender = $_POST['gender'];
        
        //image code
        $image_name = rand(0, 255) . rand(0, 255) . $_FILES['image']['name'];
        $tmp_name = $_FILES['image']['tmp_name'];
        $location = "./upload/$image_name";
        move_uploaded_file($tmp_name, $location);
        $old_image = $row['image'];
        unlink("./upload/$old_image");

        $update = "UPDATE customers set full_name='$full_name',country='$country',age=$age,phone='$phone',gender='$gender',image='$image_name' where id=$id ";

        $u = mysqli_query($connect, $update);

        if ($u) {
            header('location:./customers/index.php');
        } else {
            echo "False Insert";
        }
    }
}
