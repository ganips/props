<?php
session_start();
//$email= $_SESSION["email"]; 

?>

<?php include 'sendemail.php'; ?>


<!DOCTYPE html>
<!--<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Responsive Contact Form</title>
    <!--<link rel="stylesheet" href="stylec.css">-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css">
  </head>
  <body>

    <!--alert messages start-->
    <?php echo $alert; ?>
    <!--alert messages end-->

    <!--contact section start-->
    <!--<div class="contact-section">
     <!-- <div class="contact-info">
        <div><i class="fas fa-map-marker-alt"></i>Address, City, Country</div>
        <div><i class="fas fa-envelope"></i>contact@email.com</div>
        <div><i class="fas fa-phone"></i>+00 0000 000 000</div>
        <div><i class="fas fa-clock"></i>Mon - Fri 8:00 AM to 5:00 PM</div>
      </div>-->
      <!--<div class="contact-form">
        <h2>Contact Us</h2>
        <form class="contact" action="" method="post">
          <input type="text" name="name" class="text-box" placeholder="Your Name" required>
          <input type="email" name="email" class="text-box" placeholder="Your Email" required>
          <textarea name="message" rows="5" placeholder="Your Message" required></textarea>
          <center><input type="submit" name="submit" class="send-btn" value="Send"></center>
        </form>
      </div>
    </div>
    <!--contact section end-->

   <!-- <script type="text/javascript">
   // if(window.history.replaceState){
     // window.history.replaceState(null, null, window.location.href);
    //}
    </script>

  </body>
  
  
</html>-->

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Administrator	</title>
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <link href="assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
    <link href="assets/css/custom-styles.css" rel="stylesheet" />
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
</head>

<body>
  <div id="wrapper">
        <nav class="navbar navbar-default top-navbar" role="navigation">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href=""> <?php echo $_SESSION["user"]; ?> </a>
            </div>
			

            <ul class="nav navbar-top-links navbar-right">
                <li class="dropdown">
                   <a class="dropdown-toggle" data-toggle="dropdown" href="#" aria-expanded="false">
                        <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        
                        <li class="divider"></li>
                        <li><a href="logout.php"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                        </li>
                    </ul>
                  
                </li>
             
            </ul>
        </nav>
        
</nav>        
     
	
	  

 <div id="page-wrapper">
            <div id="page-inner">


                <div class="row">
                    <div class="col-md-12">
                        <h1 class="page-header">
                            Status <small>Contact Us </small>
                        </h1>
                    </div>
                </div>



										
		
									
										
										
                                     




<html>
<head>
<style>-->
body {
 <!-- background: 
    url("feed.jpg")
    no-repeat center center fixed;
    <!--background-size: cover;-->
	body background:center;
 <!-- font-family: "Roboto";-->
 
}
body::before {
  z-index: -1;
  content: "";
  position: fixed;
  top: 0;
  left: 0;
 <!-- background: #44c4e7;-->
  /* IE Fallback */
<!--  background:#59a3e4;-->
  opacity:0.8;
  width: 100%;
  height: 100%;
}
.form {
  position: center;
  top: 30%;
  left: 15%;
  background: #fff;
  width: 500px;
  margin: -120px 0 0 -10px;
  padding: 30px;
  box-shadow: 0 0 0px rgba(0, 0, 0, 0.5);
}
.form h2 {
  margin: 0 0 20px;
  line-height: 1;
  color:#0f3b62;
  font-size: 20px;
  font-weight: 400;
}
.form input,textarea {
  outline: none;
  display: block;
  width: 100%;
  margin: 0 0 20px;
  padding: 10px 15px;
  border: 1px solid #ccc;
 <!-- color: #000;
  <!--font-family: "Roboto";
  box-sizing: border-box;-->
  font-size: 14px;
  font-wieght: 400;
  transition: 0.2s linear;
}
.form input:focus {
  color: #333;
  border: 1px solid #155084;
}

.button {
  cursor: pointer;
 background-color: #0f4675;
            border: 0;
            border-radius: 3px;
  width: 100%;
  padding: 10px 15px;
  border: 0;
  color: #fff;
  font-family: "Roboto";
  font-size: 14px;
  font-weight: 400;
  transition: all 0.5s ease-in-out;
            outline: 0;
}
.button:hover {
   background-color: linear-gradient(to right,#0f4675,#979A9A);
            border-bottom-right-radius: 20px;
            border-top-left-radius: 20px;
}

</style>
</head>
<body>
	
<div><?php if(isset($message)) { echo $message; } ?>
</div>  
  <form  method="post" action="">

<div class="form">
<!--<h2>Sending a Message</h2>-->
<input type="hidden" name="id"  value="<?php echo $row['id']; ?>">


<label for="user_id">Email Id</label>
<input type="text" name="email"  disabled="disabled" value="<?php echo $_SESSION['email']; ?>">

<label for="message">Message</label>
<input type="text" name="message"  disabled="disabled" value="<?php echo $_SESSION['message']; ?>">
<label for="reply">Type Your Reply</label>
<textarea name="reply"  value="<?php echo $row['reply']; ?>"></textarea>
<br>
<input type="submit" name="submit" value="submit" class="btn btn-primary">

</div>


  </form>
										   
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    





				
            </div>
        </div>
    </div>
    <script src="assets/js/jquery-1.10.2.js"></script>
   
    <script src="assets/js/bootstrap.min.js"></script>
 
    <script src="assets/js/jquery.metisMenu.js"></script>
   
    <script src="assets/js/morris/raphael-2.1.0.min.js"></script>
    <script src="assets/js/morris/morris.js"></script>
   
    <script src="assets/js/custom-scripts.js"></script>













































