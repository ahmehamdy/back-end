<?php

//connect php with mysql 
//host=? , user=? , password=? , DB_name=?
$host="Localhost";
$user="root";
$password="";
$db_name="round30_st";

try{
  $connect = mysqli_connect($host,$user,$password,$db_name);

}catch(Exception $e){
   echo $e ->getMessage();
}
?>