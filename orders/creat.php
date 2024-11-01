<?php
include_once "../shared/header.php";
include_once "../shared/config.php";

$select_customer = "SELECT id , full_name from customers ";
$customer = mysqli_query($connect, $select_customer);

$select_product = "SELECT id , title from products ";
$product = mysqli_query($connect, $select_product);

$message = null;
if (isset($_POST['submit'])) {
    $amount = $_POST['amount'];
    $customer_id = $_POST['customer_id'];
    $product_id = $_POST['product_id'];
    $date = date("Y-m-d H:i:s");

    $insert = "INSERT INTO orders VALUES(null ,$amount, '$date',$customer_id,$product_id)";
    mysqli_query($connect, $insert);
    $_SESSION['message'] = "Insert order successfully";
}

?>

<div class="container col-6">
    <h1 class="text-center my-3 ">Create New Oreder</h1>
    <a href="./index.php" class="btn btn-info ">
        <h5>Back</h5>
    </a>
    <div class="card">
        <?php if (isset($_SESSION['message'])): ?>
            <div class="alert alert-success alert-dismissible fade show" role="alert">
                <?=$_SESSION['message'] ?>
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
        <?php endif; ?>
        <div class="card-body">
            <form method="POST" enctype="multipart/form-data">
                <div class="form-group">
                    <label>Order Amount</label>
                    <input type="number" class="form-control" name="amount">
                </div>
                <div class="form-group">
                    <label>Customer Name</label>
                    <select class="form-control" name="customer_id">
                        <option selected disabled>--Select Name--</option>
                        <?php foreach ($customer as $item): ?>
                            <option value="<?= $item['id'] ?>"><?= $item['full_name'] ?></option>
                        <?php endforeach ?>
                    </select>
                </div>
                <div class="form-group">
                    <label>Product Name</label>
                    <select class="form-control" name="product_id">
                        <option selected disabled>--Select Product--</option>
                        <?php foreach ($product as $item): ?>
                            <option value="<?= $item['id'] ?>"><?= $item['title'] ?></option>
                        <?php endforeach ?>
                    </select>
                </div>
                <div class="d-grid col-2 mx-auto">
                    <button name="submit" class="btn btn-primary "> Submit</button>
                </div>
            </form>
        </div>
    </div>
</div>
<?php include_once '../shared/script.php' ?>