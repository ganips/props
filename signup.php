  <?php include 'includes/session.php'; ?>
  <?php
    if(isset($_SESSION['user'])){
      header('location: cart_view.php');
    }
  ?>
  <?php include 'includes/header.php'; ?>
  <body class="hold-transition register-page">
    <div class="register-box">
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
  	  <div class="register-box-body">
    	  <center><h2> Sign Up </h2></center>

        <form action="register.php" method="POST">
            <div class="form-group has-feedback">
              <input type="text" class="form-control" name="firstname" placeholder="Firstname" value="<?php echo (isset($_SESSION['firstname'])) ? $_SESSION['firstname'] : '' ?>" required>
              <span class="glyphicon glyphicon-user form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
              <input type="text" class="form-control" name="lastname" placeholder="Lastname" value="<?php echo (isset($_SESSION['lastname'])) ? $_SESSION['lastname'] : '' ?>"  required>
              <span class="glyphicon glyphicon-user form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
              <input type="email" class="form-control" name="email" placeholder="Email" value="<?php echo (isset($_SESSION['email'])) ? $_SESSION['email'] : '' ?>" required>
              <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
              <input class="form-control" type='number' name="aadhar" placeholder="Aadhar Number" required>
              <span class="glyphicon form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
              <input type="password" class="form-control" name="password" placeholder="Password" required>
              <span class="glyphicon glyphicon-lock form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
              <input type="password" class="form-control" name="repassword" placeholder="Retype password" required>
              <span class="glyphicon glyphicon-log-in form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
              <input type="checkbox" name="terms" value="true">
              <span style="text-decoration: underline;">*I accept to the Terms and Conditions.</span>
              <br>
              <a href="index.php" style="text-decoration: underline;">View Terms and Conditions</a>
            </div>
            <div class="row">
              <center><button type="submit" style="width: 90%;" class="btn btn-primary btn-block btn-flat" name="signup"><i class="fa fa-pencil"></i> Sign Up</button></center>
            </div>
        </form>
        <div class="row">
          <center><a href="login.php" style="text-decoration: underline;">Login Instead</a><br></center>
        </div>
  	  </div>
    </div>
	
    <?php include 'includes/scripts.php' ?>
  </body>
</html>