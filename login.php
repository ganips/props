  <?php include 'includes/session.php'; ?>
  <?php
    if(isset($_SESSION['user'])){
      header('location: cart_view.php');
    }
  ?>
  <?php include 'includes/header.php'; ?>
  <body class="hold-transition login-page">
    <div class="login-box">
      <?php
        if(isset($_SESSION['error'])){
          echo "
            <div class='callout callout-danger text-center'>
              <p>".$_SESSION['error']."</p> 
            </div>
          ";
          unset($_SESSION['error']);
        }
        if(isset($_SESSION['success'])){
          echo "
            <div class='callout callout-success text-center'>
              <p>".$_SESSION['success']."</p> 
            </div>
          ";
          unset($_SESSION['success']);
        }
      ?>
      <div class="login-box-body">
        <center><h2> LOGIN </h2></center>

        <form action="verify.php" method="POST">
            <div class="form-group has-feedback">
              <input type="email" class="form-control" name="email" placeholder="Email" required>
              <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
              <input type="password" class="form-control" name="password" placeholder="Password" required>
              <span class="glyphicon glyphicon-lock form-control-feedback"></span>
            </div>
            <div class="row">
              <center><button type="submit" style="width: 90%;" class="btn btn-primary btn-block btn-flat" name="login"><i class="fa fa-sign-in"></i> Login</button></center>
            </div>

        <?php
        require_once  'vendor/autoload.php';
        $clientID='168943623184-i1uj09qbl37bigsat5l7638jeoiaujb8.apps.googleusercontent.com';
        $clientSecret='nY42ywAIRAfPsxuFnpZ5gLdk';
        $redirectUrl='http://localhost/props/login.php';

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
          echo "<a href='" .$client->createAuthUrl()."'><h3><center>Login with Google!!</center></h3></a>";
        } 
        ?>

        </form>
        <br>
        <div class="row">
          <div class="col-sm-6">
            <a href="password_forgot.php" style="text-decoration: underline;">Forgot Password</a><br>
          </div>
          <div class="col-sm-6">
            <a href="signup.php" class="text-center" style="float: right; text-decoration: underline;">Sign Up </a><br>
          </div>
        </div>
      </div>
    </div>
	
    <?php include 'includes/scripts.php' ?>
  </body>
</html>