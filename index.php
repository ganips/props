<!DOCTYPE html>
<html>
	<?php include 'includes/session.php'; ?>
	<?php include 'includes/header.php'; ?>
	<body class="hold-transition skin-blue layout-top-nav">
		<div class="wrapper">
			<?php include 'includes/navbar.php'; ?>
			<div class="content-wrapper">
				<div class="container">
					<!-- Main content -->
					<section class="content">
						<div class="row">
							<?php
								if(isset($_SESSION['error'])){
									echo "
										<div class='alert alert-danger'>
											".$_SESSION['error']."
										</div>
									";
									unset($_SESSION['error']);
								}
							?>
							<div id="myCarousel" class="carousel slide" data-ride="carousel">
								<!-- Indicators -->
								<ol class="carousel-indicators">
									<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
									<li data-target="#myCarousel" data-slide-to="1"></li>
									<li data-target="#myCarousel" data-slide-to="2"></li>
								
								</ol>

								<!-- Wrapper for slides -->
								<div class="carousel-inner">
									<div class="item active">
										<img src="images/banner2.jpg" alt="Los Angeles" style="width:100%;">
									</div>

									<div class="item">
										<img src="images/banner1.jpg" alt="Chicago" style="width:100%;">
									</div>
								
									<div class="item">
										<img src="images/banner3.jpg" alt="New york" style="width:100%;">
									</div>
								</div>
								

								<!-- Left and right controls -->
								<a class="left carousel-control" href="#myCarousel" data-slide="prev">
									<span class="glyphicon glyphicon-chevron-left"></span>
									<span class="sr-only">Previous</span>
								</a>
								<a class="right carousel-control" href="#myCarousel" data-slide="next">
									<span class="glyphicon glyphicon-chevron-right"></span>
									<span class="sr-only">Next</span>
								</a>
							</div>
						</div>
						<br></br>
						 <!-- <div class="row"> s
							<center><h2>OUR TOP PRODUCTS</h2></center>
							<br></br>
							<?php include 'topproducts.php'; ?>
						</div> -->
						<br></br>
						<div class="row">
							<div class="col-sm-6">
								<center><h2>ABOUT US</h2></center>
								<br></br>
								<p>
									Prentii is an e-commerce site that will be capable of providing every kind of goods and products from every sector to every consumer all over the India. Prentii is a place where you can hire your DREAM dresses. The world’s marketplace will be only finger-tips away for any customer in possession of a smartphone/computer and an internet connection. They will be able to hire everything from a safety-pin to an apartment building from our website. We have gathered the brightest minds and given them the platform to perform to their fullest extent. All the data-mining and optimization has been done in-house and no outsourcing from any organization has taken place. It is a platform where people can hire all kinds of goods from a single website. We hire no outsourcing outlets and that ensures the security of all our users. There is absolutely no chance of any information being leaked thanks to our dedicated team who are working all the time to ensure that our website is the most secure e-commerce platform. What separates us from other platforms of such sorts is the diversity of our product range and the security that we provide to our users. It is absolutely cutting-edge and state-of-the-art and we can guarantee that no other platform has this much diversity in its product range. Our website is going to be so convenient and user-friendly for our customers that, they would rather hire from our website than go to the shop which is 100 meters away from his/her home. That is the kind of target Prentii has set for itself. And once we achieve our targets, we will start expanding towards other countries and present ourselves on a much broader and global scale and encompass the entire world with our website in a short amount of time.
								</p>
							</div>
							<div class="col-sm-6">
								<center><h2>TERMS & CONDITIONS</h2></center>
								<br></br>
								<p>
									1. The Prop agrees to rent you is the prop as selected by you upon signing and agreeing to the Terms and Conditions as listed below.
								</p>
								<p>
									2. A non-refundable deposit of 50% is required to secure the booking of the prop.
								</p>
								<p>
									3. The balance of the rental amount is due and payable on the prop hire date.
								</p>
								<p>
									4. Cancellation by the user of the booking requires 48 hours notice prior to the props hire date.  If less notice is given you are required to pay the balance of the rental amount.
								</p>
								<p>
									5. Props are to be returned to That Prop on the agreed return date below.
								</p>
								<p>
									6. If the prop is not returned on the agreed return date you will be charged an additional INR 30 fee for each additional day that the prop is not returned.
								</p>
								<p>
									7. If the prop is severely stained or damaged you will be charged for the repairs and/or additional cleaning.
								</p>
								<p>
									8. If the prop is no longer in a ‘original condition’ after being cleaned you will be charged the replacement value of the props.  What is considered to be ‘wearable condition’ is at the discretion of That Props.
								</p>
								<p>
									9. You agree to provide your card details as security against additional charges resulting from damage to the props.
								</p>
								<p>
									10. You agree that you are renting the props for a limited time and the ownership of the props remains with us at all times..
								</p>
							</div>
						</div>
						<br></br>
						<div class="row">
							<center><h2>CONTACT US</h2></center>
							<br></br>
							<div class="col-sm-6">
								<form action="contact.php" method="POST" style="text_align:centre;">
									<div class="form-group has-feedback">
										<input name="name" placeholder="Name" class="form-control">
									</div>
									<div class="form-group has-feedback">
										<input name="email" placeholder="Email address" type="email" class="form-control">
									</div>
									<div class="form-group has-feedback">
										<input name="contact" placeholder="Contact no" type="contactno" class="form-control">
									</div>
									<div class="form-group has-feedback">
										<textarea rows="4" cols="50" name="description" placeholder="Please enter your query"  class="form-control"></textarea>
									</div>
									<div class="row">
										<div class="col-xs-4"></div>
    								<div class="col-xs-4">
											<input name="submit" class="btn btn-primary btn-block btn-flat" type="submit" value="Send" />   
										</div>
										<div class="col-xs-4"></div>
									</div>
								</form>
							</div>
							<div class="col-sm-6">
								<div class="row">
									<div class="col-sm-6">

										<p>Kavya Gowda</p>
										<p>+91 7795357223</p>
										<p>kavyagowda0216@gmail.com</p>
									</div>
									<div class="col-sm-6">
										<p>Monisha</p>
										<p>+91 7676665619</p>
										<p>monishabhoomi@gmail.com</p>
									</div>
								</div>
							</div>
						</div>
					</section>
				</div>
			</div>
		</div>
		<?php include 'includes/scripts.php'; ?>
	</body>
</html>