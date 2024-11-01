<?php
include_once "../shared/config.php";
include_once "../shared/header.php";
$counter = 1;
//insert query
$select = "SELECT * FROM orders order by id DESC ";
$data = mysqli_query($connect, $select);

if (isset($_GET['delete'])) {
    $id = $_GET['delete'];  
    
    //delete query
    $delete = "DELETE FROM orders where id =$id "; 
    mysqli_query($connect, $delete);
    header('location:./index.php');
}

?>

<div class="container col-md-6">
    <div class="card">
        <h5 class="ml-4">All Oreders <a href="./creat.php" class="btn btn-info float-right mr-4"><h6>Creat new</h6></a></h5>
        <div class="card-body"></h4>
            <table class="table table-dark">
                <tr class="text-center">
                    <th>ID</th>
                    <th>Amount</th>
                    <th>Creat Date</th>
                    <th colspan="2">Action</th>
                </tr>
                <?php foreach ($data as $item): ?>
                    <tr class="text-center">
                        <td><?= $counter++ ?></td>
                        <td><?= $item['amount'] ?></td>
                        <td><?= $item['create_date'] ?></td>
                        <!---view--->
                        <th><a href="./view.php?view=<?= $item['id'] ?>"><i class="text-info fa-solid fa-eye"></i></a></th>
                        <!---delete--->
                        <th><a onclick="return confirm('Are You Sure ??')" href="./index.php?delete=<?= $item['id'] ?>"><i class="text-danger fa-solid fa-trash-can"></i></i></a></th>
                    </tr>
                <?php endforeach; ?>
            </table>
        </div>
    </div>
</div>

<?php include_once "../shared/script.php"; ?>