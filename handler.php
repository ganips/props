<?php include 'includes/session.php'; ?>
<?php 
    $conn = $pdo->open();
    $password =  password_hash($_POST['newpassword'], PASSWORD_DEFAULT);
    $stmt = $conn->prepare("UPDATE users SET password=:new WHERE email=:email");
    $stmt->execute(['new' => $password, 'email' => $_POST['username']]);
    $pdo->close();
?>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<div class="wrapper" style="width: 35%; margin: 0 auto;">
<form class="form-signin" action='login.php' method="post">      
<br> </br>
<br> </br>
<div>Your Password changed successfully;</div>
<br> </br>

<button type="submit" class="btn btn-primary btn-block btn-flat" name="login"><i class="fa fa-sign-in"></i> Sign In</button>
</form>
<?php include 'includes/scripts.php' ?>
</body>
</html>