<?php
include_once "../shared/config.php";
include_once "../shared/header.php";

if (isset($_GET['view'])) {
    $id = $_GET['view'];
    $select = "SELECT *  FROM customers where id =$id ";
    $data = mysqli_query($connect, $select);
    $row = mysqli_fetch_assoc($data);
    
}

?>

<div class="container col-md-4">
    <h5 class="ml-4">Show Customer : <?= $row['id'] ?> <a href="./creat.php" class="btn btn-info float-right mr-4">
            <h6>Creat new</h6>
        </a></h5>
    <div class="card">
        <img src="./upload/<?= $row['image']?>" class="img-fluid img-top">
        <div class="card-body">
            <h6>Full Name : <?= $row['full_name']?></h6>
            <hr>
            <h6>Country : <?= $row['country']?></h6>
            <hr>
            <h6>Age : <?= $row['age']?></h6>
            <hr>
            <h6>Phone : <?= $row['phone']?></h6>
            <hr>
            <h6>Gender : <?= $row['gender']?></h6>
            <hr>
        </div>
    </div>
</div>
<?php include_once "../shared/script.php"; ?>