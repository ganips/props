<?php include 'includes/session.php'; ?>

<?php
  if(isset($_SESSION['user'])){
    header('location: login.php');
  }
?>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<div class="wrapper" style="width: 35%; margin: 0 auto;">
<form class="form-signin" action='handler.php' method="post">       
<h2 class="form-signin-heading">Forgot Password</h2><br/>
<input type="text" class="form-control" name="username" placeholder="Email Your Email" required="" autofocus="" />
<br/>
<input type="password" class="form-control" name="newpassword" placeholder="New Password" required=""/><br/>
<input type="password" class="form-control" name="confirmpassword" placeholder="Confirm New Password" required=""/>
<br/>
<button class="btn btn-small btn-primary btn-block" type="submit">Submit</button>   
</form>
</div>

<?php include 'includes/scripts.php' ?>
</body>
</html>