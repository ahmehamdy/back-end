<?php
include_once "../shared/header.php";
include_once "../shared/config.php";
?>

<div class="container col-6">
    <h1 class="text-center my-3 ">Creat New Customer</h1>
    <a href="./index.php" class="btn btn-info "><h5>Back</h5></a>
    <div class="card">
        <div class="card-body">
            <form action="./insert_requist.php" method="POST" enctype="multipart/form-data">
                <div class="form-group">
                    <label>Customer Name</label>
                    <input type="text" class="form-control" name="full_name">
                </div>
                <div class="form-group">
                    <label>Country</label>
                    <input type="text" class="form-control" name="country">
                </div>
                <div class="form-group">
                    <label>Age</label>
                    <input type="number" class="form-control" name="age">
                </div>
                <div class="form-group">
                    <label>Phone</label>
                    <input type="text" class="form-control" name="phone">
                </div>
                <div class="form-group">
                    <label>Customer Image</label>
                    <input type="file" class="form-control" accept="image/*" name="image">
                </div>
                <div class="form-group">
                    <label>Gender</label>
                    <select name="gender" class="form-control">
                        <option value="Male">Male</option>
                        <option value="Female">Female</option>
                    </select>
                </div>
                <div class="d-grid col-2 mx-auto">
                    <button name="submit" class="btn btn-primary "> Submit</button>
                </div>
            </form>
        </div>
    </div>
</div>
<?php include_once'../shared/script.php'?>