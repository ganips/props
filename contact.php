<?php
session_start();
  date_default_timezone_set("Asia/Kolkata");
   $date = date('Y-m-d h:i:s');
   $name = $_POST['name'];
   $contactno = $_POST['contact'];
   $emailid = $_POST['email'];
   $subject = $_POST['description'];

$conn=new mysqli("localhost","root","","props");
if($conn->connect_error)
	die("connection failed".$conn->connect_error);
 else
     echo" ";
$sql = "INSERT INTO testimonials
                (name,email,contactno,date,description)
                VALUES ('".$name."','".$emailid."','".$contactno."','".$date."','".$subject."')"; 
if (mysqli_query($conn,$sql))
	echo  "<script>alert('Your query is been received! WE WILL GET BACK TO YOU SOON')</script>";
    echo "<script>location.replace('index.php')</script>";
?>