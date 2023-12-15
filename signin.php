
<?php
require_once  'vendor/autoload.php';
$clientID='714163402273-et4ugvnh7f5h7tafe2dpcg9oefmub14h.apps.googleusercontent.com';
$clientSecret='INWZet6VY4DaAKBD70EmD0lf';
$redirectUrl='http://localhost/inn/indexuser.php';

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

echo   "<h1><center>welcome!!<br>.$name.<br>You are registered with.$email</center></h1>";

}
else{
	echo "<a href='" .$client->createAuthUrl()."'>login with google</a>";
}	
?>
<html>
<head>
<body>
<div id="main-wrapper">
<a href="indexuser.php"><center><input type="button"id="home" value="Home"/></center></a>
<style>

#main-wrapper:before{
    background-image: url("nature.jpg");
    width: 100%;
    height: 100%;
    -webkit-background-size: cover;
     background-size: cover;
    content: '';
    position: fixed;
	left: 0;
	right: 0;
	top: 0;
	bottom: 0;
	z-index: -1;
	display: block;
	text-align: center;
	
}
#main-wrapper .header-text{
  font-size: 32px;
  font-weight: 600;
  padding-bottom: 30px;
  text-align: center;
  color : #fff;
}


#main-wrapper input{
    margin: 10px 0;
    border: none;
	text-align: center;
    padding: 10px;
    border-radius: 5px;
    width: 10%;
    font-size: 16px;
    font-family: poppins;
	
}

#home

{	
	background-color: #4169E1;;
	color: white;
	width: 10%;
	text-align: center;
	
}	
#home
{
	 background-color: #4169E1;;
	 cursor: pointer;
}




</style>
</div>
</body>
</head>
</html>



