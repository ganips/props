<?php
session_start();
  date_default_timezone_set("Asia/Kolkata");
   $date = date("d/m/Y");
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
                (name,email,contactno,description)
                VALUES ('".$name."','".$emailid."','".$contactno."','".$subject."')"; 
if (mysqli_query($conn,$sql))
	echo  "<script>alert('Your query is been received! WE WILL GET BACK TO YOU SOON')</script>";
    echo "<script>location.replace('index.php')</script>";
?>