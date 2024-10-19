<?php
if(isset($_POST['submit'])){
    header("location:./index.php");
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Orders</title>
    <link href="css/bootstrap.css" rel="stylesheet">

</head>

<body>

    <div class="container col-6">
        <form method="POST">
            <div class="form-group mb-3">
                <input name="amount" type="text" placeholder="Amount" class="form-control">
            </div>
            <div class="form-group mb-3">
                <input name="create_date" type="text" placeholder="Create Date" class="form-control">
            </div>
            <div class="form-group mb-3">
                <input name="customer_id" type="text" placeholder="Customer Id" class="form-control">
            </div>
            <div class="form-group mb-3">
                <input name="product_id" type="text" placeholder="ProductId" class="form-control">
            </div>
            <div class="d-grid col-2 mx-auto">
                <button name="submit" class="btn btn-primary "> Submit</button>
            </div>
        </form>
    </div>


</body>

</html>