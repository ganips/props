<!DOCTYPE html> <html> <head> <meta name="viewport"
content="width=device-width, initial-scale=1"> <link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>
body {
  font-family: Arial;
  font-size: 17px;
  padding: 8px;
}

* {
  box-sizing: border-box;
}

.row {
  display: -ms-flexbox; /* IE10 */
  display: flex;
  -ms-flex-wrap: wrap; /* IE10 */
  flex-wrap: wrap;
  margin: 0 -16px;
}

.col-25 {
  -ms-flex: 25%; /* IE10 */
  flex: 25%;
}

.col-50 {
  -ms-flex: 50%; /* IE10 */
  flex: 50%;
}

.col-75 {
  -ms-flex: 75%; /* IE10 */
  flex: 75%;
}

.col-25,
.col-50,
.col-75 {
  padding: 0 16px;
}

.container {
  background-color: #f2f2f2;
  padding: 5px 20px 15px 20px;
  border: 1px solid lightgrey;
  border-radius: 3px;
}

input[type=text] {
  width: 100%;
  margin-bottom: 20px;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 3px;
}

label {
  margin-bottom: 10px;
  display: block;
}

.icon-container {
  margin-bottom: 20px;
  padding: 7px 0;
  font-size: 24px;
}

.btn {
  background-color: #4CAF50;
  color: white;
  padding: 12px;
  margin: 10px 0;
  border: none;
  width: 100%;
  border-radius: 3px;
  cursor: pointer;
  font-size: 17px;
}

.btn:hover {
  background-color: #45a049;
}

a {
  color: #2196F3;
}

hr {
  border: 1px solid lightgrey;
}

span.price {
  float: right;
  color: grey;
}

/* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other (also change the direction - make the "cart" column go on top) */
@media (max-width: 800px) {
  .row {
    flex-direction: column-reverse;
  }
  .col-25 {
    margin-bottom: 20px;
  } 
}
</style>
<title>Prentii</title>
</head>
<body>


<div class="row"  style="padding:100px 300px;">
  <div class="col-50">
    <div class="container" >
      <form  action="payscript.php" method="post" style="padding: 25px;">
      
        <div class="row" >
          <div class="col-25">
            <h3 style="text-align: center;margin:20px 10px;font-family: lato;">Checkout Form</h3>
          
          <?php
            include 'includes/session.php';
            $conn = $pdo->open();
            $stmt = $conn->prepare("select * from users");
            $stmt->execute();
            foreach($stmt as $row){
              if($_SESSION['user'] == $row['id']){
                $_SESSION['user_details'] = $row;
              }
            }
            $pdo->close();
            ?>
                <label for="fname"><i class="fa fa-user"></i> Full Name</label>
                <input type="text" id="fname" name="name" value="<?php if(1) echo $_SESSION['user_details']['firstname']; echo " "; if($_SESSION['user_details']['lastname']) echo $_SESSION['user_details']['lastname'] ?>" placeholder="Please enter your Name">
                <label for="email"><i class="fa fa-envelope"></i> Email</label>
                <input type="text" id="email" value="<?php echo $_SESSION['user_details']['email'] ?>" name="user_id" placeholder="Please enter your email">
                <input type="hidden" value="<?php echo 'OID'.rand(100,1000);?>" name="orderid">
                <input type="hidden" value="<?php echo $_POST['amount'];?>" name="amount">
                <label for="city"><i class="fa fa-mobile"></i> Mobile</label>
                <input type="text" id="city" value="<?php if($_SESSION['user_details']['contact_info']) echo $_SESSION['user_details']['contact_info'] ?>" name="phone" placeholder="Mobile Number">
                <label for="adr"><i class="fa fa-address-card-o"></i> Address</label>
                <input type="text" id="adr" value="<?php if($_SESSION['user_details']['address']) echo $_SESSION['user_details']['address'] ?>" name="address" placeholder="Please enter your address">
          
        </div>
       
        <button type="submit" style="background-color : cornflowerblue;" class="btn btn-primary btn-block btn-flat">Pay Now</button> 
      </form>
    </div>
  </div>  
 
</div>

</body>
</html>
