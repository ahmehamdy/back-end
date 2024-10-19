<?php
include_once "../shared/header.php";
include_once "../shared/config.php";

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
        
        if (empty($_FILES['image']['name'])) {
            $image_name = $row['image'];
        } else {
            //image code
            $image_name = rand(0, 255) . rand(0, 255) . $_FILES['image']['name'];
            $tmp_name = $_FILES['image']['tmp_name'];
            $location = "./upload/$image_name";
            move_uploaded_file($tmp_name, $location);
            $old_image = $row['image'];
            unlink("./upload/$old_image");
        }

        $update = "UPDATE customers set full_name='$full_name',country='$country',age=$age,phone='$phone',gender='$gender',image='$image_name' where id=$id ";
        $u = mysqli_query($connect, $update);

        if ($u) {
            header('location:/ahmed/customers/index.php');
        } else {
            echo "False Insert";
        }
    }
}


?>

<div class="container col-6">
    <h1 class="text-center my-3 ">Update Existed Customer</h1>
    <a href="./index.php" class="btn btn-info">
        <h5 class="text-dark">Back</h5>
    </a>
    <div class="card">
        <div class="card-body">
            <form method="POST" enctype="multipart/form-data">
                <div class="form-group">
                <input hidden type="text" class="form-control" value="<?= $row['id'] ?>" name="id">
                <label>Customer Name</label>
                    <input  type="text" class="form-control" value="<?= $row['full_name'] ?>" name="full_name">
                </div>
                <div class="form-group">
                    <label>Country</label>
                    <input type="text" class="form-control" value="<?= $row['country'] ?>" name="country">
                </div>
                <div class="form-group">
                    <label>Age</label>
                    <input type="number" class="form-control" value="<?= $row['age'] ?>" name="age">
                </div>
                <div class="form-group">
                    <label>Phone</label>
                    <input type="text" class="form-control" value="<?= $row['phone'] ?>" name="phone">
                </div>
                <div class="form-group">
                    <label>Customer Image</label>
                    <input type="file" class="form-control" accept="image/*" name="image">
                </div>
                <div class="form-group">
                    <label>Gender</label>
                    <select name="gender" class="form-control">
                        <?php if ($row['gender'] == 'Male'): ?>
                            <option selected value="Male">Male</option>
                            <option value="Female">Female</option>
                        <?php else : ?>
                            <option selected value="Female">Female</option>
                            <option value="Male">Male</option>
                        <?php endif ?>
                    </select>
                </div>
                <div class="d-grid col-2 mx-auto">
                    <button name="update" class="btn btn-warning "> Update</button>
                </div>
            </form>
        </div>
    </div>
</div>
<?php include_once '../shared/script.php' ?>