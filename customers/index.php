<?php
include_once "../shared/config.php";
include_once "../shared/header.php";
$counter = 1;
//insert query
$select = "SELECT * FROM customers order by id DESC ";
$data = mysqli_query($connect, $select);

if (isset($_GET['delete'])) {
    $id = $_GET['delete'];
    
    //select old image
    $select_one = "SELECT *  FROM customers where id =$id ";
    $data_one = mysqli_query($connect, $select);
    $row = mysqli_fetch_assoc($data);
    $old_image = $row['image'];
    if($old_image != "def.jpg"){
        unlink("./upload/$old_image");
    }    
    
    //delete query
    $delete = "DELETE FROM customers where id =$id ";
    mysqli_query($connect, $delete);
    header('location:./index.php');
}

?>

<div class="container col-md-6">
    <div class="card">
        <h5 class="ml-4">All Customers <a href="./creat.php" class="btn btn-info float-right mr-4"><h6>Creat new</h6></a></h5>
        <div class="card-body"></h4>
            <table class="table table-dark">
                <tr class="text-center">
                    <th>ID</th>
                    <th>Full Name</th>
                    <th colspan="3">Action</th>
                </tr>
                <?php foreach ($data as $item): ?>
                    <tr>
                        <td><?= $counter++ ?></td>
                        <td><?= $item['full_name'] ?></td>
                        <!---view--->
                        <th><a href="./view.php?view=<?= $item['id'] ?>"><i class="text-info fa-solid fa-eye"></i></a></th>
                        <!---edite--->
                        <th><a href="./update.php?edite=<?= $item['id'] ?>"><i class="text-warning fa-solid fa-pen-to-square"></i></a></th>
                        <!---delete--->
                        <th><a onclick="return confirm('Are You Sure ??')" href="./index.php?delete=<?= $item['id'] ?>"><i class="text-danger fa-solid fa-trash-can"></i></i></a></th>
                    </tr>
                <?php endforeach; ?>
            </table>
        </div>
    </div>
</div>
<?php include_once "../shared/script.php"; ?>