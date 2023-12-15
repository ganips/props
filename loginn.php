<?php
session_start();
$con = mysqli_connect("localhost","root","") or die ("unable to connect");
mysqli_select_db($con,"inn2");

?>






			
			
<?php
	if(isset($_POST['login']))  
	  {
		   $_SESSION["email"]=$_POST["email"];
		   $_SESSION["name"]=$_POST["name"];
		   $_SESSION["password"]=$_POST["password"];
		   $_SESSION["Phone"]=$_POST["Phone"];
		   

		  
		   
		   
		   
		   		   
          $email=$_POST['email'];	
          $name=$_POST['name'];	
		  $password=$_POST['password'];
		  $Phone=$_POST['Phone'];	

	
    		  
  $query="select * from users WHERE  name='$name' AND Phone='$Phone' AND email='$email' AND password='$password'";
		  
		  $query_run = mysqli_query($con,$query);
		  if(mysqli_num_rows($query_run)>0)
		  {
            		
					//$_POST['email']=$email;

					
					header("location:indexuser.php");
		  }
		  else
		  {
			  
			 echo '<script type="text/javascript"> alert("invalid credentials") </script>';
		  }
	   }
	   ?>	


<!DOCTYPE html>
<html lang="en" >

<head>

  <meta charset="UTF-8">
  
<link rel="apple-touch-icon" type="image/png" href="https://cpwebassets.codepen.io/assets/favicon/apple-touch-icon-5ae1a0698dcc2402e9712f7d01ed509a57814f994c660df9f7a952f3060705ee.png" />
<meta name="apple-mobile-web-app-title" content="CodePen">

<link rel="shortcut icon" type="image/x-icon" href="https://cpwebassets.codepen.io/assets/favicon/favicon-aec34940fbc1a6e787974dcd360f2c6b63348d4b1f4e06c77743096d55480f33.ico" />

<link rel="mask-icon" type="" href="https://cpwebassets.codepen.io/assets/favicon/logo-pin-8f3771b1072e3c38bd662872f6b673a722f4b3ca2421637d5596661b4e2132cc.svg" color="#111" />


  <title>Inn</title>
  <?php
			         
					 if(isset($_SESSION['status']))
					 {
				?>
						<div class="alert alert-success">
						<h5><?=  $_SESSION['status']; ?></h5>
						</div>
				<?php
						unset($_SESSION['status']);
					
					 }
			?>
  
  
  
<style>
* {
  font-family: -apple-system, BlinkMacSystemFont, "San Francisco", Helvetica, Arial, sans-serif;
  font-weight: 300;
  margin: 0;
}

html, body {
  height: 100vh;
  width: 100vw;
  margin: 0 0;
  display: flex;
  align-items: flex-start;
  justify-content: flex-start;
  background: #f3f2f2;
  background-image: url("myvenki2.jpg");
  background-size: cover;
  
}

h4 {
  font-size: 70px;
  font-weight: 600;
  color: #000;
  opacity: 0.85;
}

label {
  font-size: 12.5px;
  color: #000;
  opacity: 0.8;
  font-weight: 400;
}

form {
  padding: 40px 30px;
  background: #fefefe;
  display: flex;
  flex-direction: column;
  align-items: flex-start;
  padding-bottom: 20px;
}
form h4 {
  margin-bottom: 20px;
  color: rgba(0, 0, 0, 0.5);
}
form h4 span {
  color: black;
  font-weight: 700;
}
form p {
  line-height: 155%;
  margin-bottom: 5px;
  font-size: 20px;
  color: #000;
  opacity: 0.65;
  font-weight: 400;
  max-width: 500px;
  margin-bottom: 40px;
}

a.discrete {
  color: rgba(0, 0, 0, 0.4);
  font-size: 14px;
  border-bottom: solid 1px rgba(0, 0, 0, 0);
  padding-bottom: 4px;
  margin-left: auto;
  font-weight: 300;
  transition: all 0.3s ease;
  margin-top: 40px;
}
a.discrete:hover {
  border-bottom: solid 1px rgba(0, 0, 0, 0.2);
}

button {
  -webkit-appearance: none;
  width: auto;
  min-width: 100px;
  border-radius: 24px;
  text-align: center;
  padding: 15px 40px;
  margin-top: 5px;
  background-color: #b08bf8;
  color: #fff;
  font-size: 14px;

  font-weight: 500;
  box-shadow: 0px 2px 6px -1px rgba(0, 0, 0, 0.13);
  border: none;
  transition: all 0.3s ease;
  outline: 0;
}
button:hover {
  transform: translateY(-3px);
  box-shadow: 0 2px 6px -1px rgba(182, 157, 230, 0.65);
}
button:hover:active {
  transform: scale(0.99);
}

input {
  font-size: 20px;
  padding: 20px 0px;
  height: 56px;
  border: none;
  border-bottom: solid 1px rgba(0, 0, 0, 0.1);
  background: #fff;
  min-width: 280px;
  box-sizing: border-box;
  transition: all 0.3s linear;
  color: #000;
  font-weight: 400;
  -webkit-appearance: none;
}
input:focus {
  border-bottom: solid 1px #b69de6;
  outline: 0;
  box-shadow: 0 2px 6px -8px rgba(182, 157, 230, 0.45);
}

.floating-label {
  position: relative;
  margin-bottom: 10px;
}
.floating-label label {
  position: absolute;
  top: calc(50% - 7px);
  left: 0;
  opacity: 0;
  transition: all 0.3s ease;
}
.floating-label input:not(:-moz-placeholder-shown) {
  padding: 28px 0px 12px 0px;
}
.floating-label input:not(:-ms-input-placeholder) {
  padding: 28px 0px 12px 0px;
}
.floating-label input:not(:placeholder-shown) {
  padding: 28px 0px 12px 0px;
}
.floating-label input:not(:-moz-placeholder-shown) + label {
  transform: translateY(-10px);
  opacity: 0.7;
}
.floating-label input:not(:-ms-input-placeholder) + label {
  transform: translateY(-10px);
  opacity: 0.7;
}
.floating-label input:not(:placeholder-shown) + label {
  transform: translateY(-10px);
  opacity: 0.7;
}

.session {
  display: flex;
  flex-direction: row;
  width: auto;
  height: auto;
  margin: auto auto;
  background: #ffffff;
  border-radius: 4px;
  box-shadow: 0px 2px 6px -1px rgba(0, 0, 0, 0.12);
}

.left {
  width: 270px;
  height: auto;
  min-height: 100%;
  position: relative;
  background-image: url("https://images.pexels.com/photos/114979/pexels-photo-114979.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940");
  background-size: cover;
  border-top-left-radius: 4px;
  border-bottom-left-radius: 4px;
}
.left svg {
  height: 40px;
  width: auto;
  margin: 20px;
}
</style>

  <script>
  window.console = window.console || function(t) {};
</script>

  
  
  <script>
  if (document.location.search.match(/type=embed/gi)) {
    window.parent.postMessage("resize", "*");
  }
</script>


</head>

<body translate="no" >
  <body>
  <div class="session">
    <div class="left">

      <?xml version="1.0" encoding="UTF-8"?>
      <svg enable-background="new 0 0 300 302.5" version="1.1" viewBox="0 0 300 302.5" xml:space="preserve" xmlns="http://www.w3.org/2000/svg">
<style type="text/css">
	.st0{fill:#fff;}
</style>
			<path class="st0" d="m126 302.2c-2.3 0.7-5.7 0.2-7.7-1.2l-105-71.6c-2-1.3-3.7-4.4-3.9-6.7l-9.4-126.7c-0.2-2.4 1.1-5.6 2.8-7.2l93.2-86.4c1.7-1.6 5.1-2.6 7.4-2.3l125.6 18.9c2.3 0.4 5.2 2.3 6.4 4.4l63.5 110.1c1.2 2 1.4 5.5 0.6 7.7l-46.4 118.3c-0.9 2.2-3.4 4.6-5.7 5.3l-121.4 37.4zm63.4-102.7c2.3-0.7 4.8-3.1 5.7-5.3l19.9-50.8c0.9-2.2 0.6-5.7-0.6-7.7l-27.3-47.3c-1.2-2-4.1-4-6.4-4.4l-53.9-8c-2.3-0.4-5.7 0.7-7.4 2.3l-40 37.1c-1.7 1.6-3 4.9-2.8 7.2l4.1 54.4c0.2 2.4 1.9 5.4 3.9 6.7l45.1 30.8c2 1.3 5.4 1.9 7.7 1.2l52-16.2z"/>
</svg>      
    </div>
    <form action="loginn.php" method="POST" autocomplete="off"> 
      <h4><span>INN</span></h4>
      <h1><p>Welcome back! Login to your account!!</p></h1>
      <div class="floating-label">
	   <div class="floating-label">
        <input placeholder="Name" type="name" name="name" id="name" autocomplete="off" required/>
        <label for="name">name:</label>
      </div>
	  
	  
	  
	  
	   <div class="floating-label">
        <input placeholder="phoneno" type="phone" name="Phone" id="Phone" autocomplete="off" required />
        <label for="phone">phoneno:</label>
      </div>
        <input placeholder="Email" type="text" name="email" id="email" autocomplete="off" required />
        <label for="email">Email:</label>
      </div>
      <div class="floating-label">
        <input placeholder="Password" type="password" name="password" id="password" autocomplete="off" required />
        <label for="password">Password:</label>
      </div>
      <button type="submit"  name="login" >Log in</button>
	  <a href="forgot.php"><p>forgot password?</p></a>
	 <a href="register.php"><p>not yet member?Register</p></a>
    
  
 
<?php
require_once  'vendor/autoload.php';
$clientID='168943623184-i1uj09qbl37bigsat5l7638jeoiaujb8.apps.googleusercontent.com';
$clientSecret='nY42ywAIRAfPsxuFnpZ5gLdk';
$redirectUrl='http://localhost/props/index.php';

$client = new Google_Client();
$client->setClientId($clientID);
$client->setClientSecret($clientSecret);
$client->setRedirectUri($redirectUrl);
$client->addScope('profile');
$client->addScope('email');

if(isset($_GET['code'])){
$token=$client->fetchaccessTokenWithAuthCode($_GET['code']);
$client->setaccessToken($token);
$gauth = new Google_Service_Oauth2($client);
$goggle_info = $gauth->userinfo->get();
$email = $goggle_info->email;
$name = $goggle_info->name;
echo  "<h1><center>welcome!!<br>.$name.<br>You are registered with.$email</center></h1>";
      
}
else{
	echo "<a href='" .$client->createAuthUrl()."'><h3><center>login with google!!</center></h3></a>";
}	
?>

	
	</form>
		  
	  </div>
</body>

</html>