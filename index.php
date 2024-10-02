<?php
$counter=1;
$user=[
  [
    "id"=>1,
    "name"=>"Ahmed",
    "job"=>"Web Developer",
    "gender"=>"Male"
  ],
  [
    "id"=>2,
    "name"=>"Ali",
    "job"=>"Web Developer",
    "gender"=>"Male"
  ],
  [
    "id"=>3,
    "name"=>"lila",
    "job"=>"Web Developer",
    "gender"=>"Female"
  ],
  [
    "id"=>4,
    "name"=>"Alaa",
    "job"=>"Web Developer",
    "gender"=>"Female"
  ],
  [
    "id"=>5,
    "name"=>"Alaa",
    "job"=>"Web Developer",
    "gender"=>"Male"
  ],
]; 
?>


<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet"href="css/bootstrap.css">
  <link rel="stylesheet"href="css/all.css">
</head>
<body>
  <h1 class="text-center">List User</h1>
  <div class="container col-md-6">
    <div class="card">
      <div class="card-body">
        <table class="table">
          <tr>
          <th>ID</th>
          <th>NAME</th>
          <th>JOB</th>
          <th>GENDER</th>
        </tr>
        <?php foreach($user as $item):?>
          <tr>
            <th><?= $counter++?></th>
            <th><?= $item['name']?></th>
            <th><?= $item['job']?></th>
            <th>
              <?php if($item['gender']=='Male'):?>
                <i class="text-info fa-solid fa-person"></i>
              </th>
              <?php elseif($item['gender']=='Female'):?>
                <i class="text-danger fa-solid fa-person-dress"></i>
                <?php endif;?>
          </tr>
          <?php endforeach;?>
        </table>
      </div>
    </div>
  </div>
</body>
</html>
