<?php include 'includes/session.php'; ?>
<?php
	$conn = $pdo->open();

	$slug = $_GET['product'];

	try{
		 		
	    $stmt = $conn->prepare("SELECT *, products.name AS prodname, category.name AS catname, products.id AS prodid FROM products LEFT JOIN category ON category.id=products.category_id WHERE slug = :slug");
	    $stmt->execute(['slug' => $slug]);
	    $product = $stmt->fetch();
		
	}
	catch(PDOException $e){
		echo "There is some problem in connection: " . $e->getMessage();
	}

	//page view
	$now = date('Y-m-d');
	if($product['date_view'] == $now){
		$stmt = $conn->prepare("UPDATE products SET counter=counter+1 WHERE id=:id");
		$stmt->execute(['id'=>$product['prodid']]);
	}
	else{
		$stmt = $conn->prepare("UPDATE products SET counter=1, date_view=:now WHERE id=:id");
		$stmt->execute(['id'=>$product['prodid'], 'now'=>$now]);
	}

?>
<?php include 'includes/header.php'; ?>
<body class="hold-transition skin-blue layout-top-nav">
<script>
(function(d, s, id) {
	var js, fjs = d.getElementsByTagName(s)[0];
	if (d.getElementById(id)) return;
	js = d.createElement(s); js.id = id;
	js.src = 'https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.12';
	fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));
</script>
<div class="wrapper">

	<?php include 'includes/navbar.php'; ?>
	 
	  <div class="content-wrapper">
	    <div class="container">

	      <!-- Main content -->
	      <section class="content">
	        <div class="row">
	        	<div class="col-sm-9">
	        		<div class="callout" id="callout" style="display:none">
	        			<button type="button" class="close"><span aria-hidden="true">&times;</span></button>
	        			<span class="message"></span>
	        		</div>
		            <div class="row">
		            	<div class="col-sm-6">
		            		<img src="<?php echo (!empty($product['photo'])) ? 'images/'.$product['photo'] : 'images/noimage.jpg'; ?>" width="100%" class="zoom" data-magnify-src="images/large-<?php echo $product['photo']; ?>">
		            		<br><br>
		            		<form class="form-inline" id="productForm">
		            			<div class="form-group">
			            			

			            			</br>
			            			</br>
			            			<p><b>Description:</b></p>
		            		<p><?php echo $product['description']; ?></p>
			            		</div>
			            		

		            		
		            	</div>
		            	<div class="col-sm-6">
		            		<h1 class="page-header"><?php echo $product['prodname']; ?></h1>
		            		<h3><b>&#8377; <?php echo number_format($product['price'], 2); ?>/day</b></h3>
		            		<p><b>Category:</b> <a href="category.php?category=<?php echo $product['cat_slug']; ?>"><?php echo $product['catname']; ?></a></p>
		            		
		            		<label for="from_date" class="col-sm-1 control-label" style="margin-top: 5px; margin-left: 0;">From</label>
									<input type="date" min=<?php echo date('Y-m-d h:i:s') ?> name="from_date" id="from_date" class="form-control input-md" style=" margin-top: 12px;margin-left:20px;" required></input>
									<label for="to_date" class="col-sm-1 control-label" style="margin-top: 10px; margin-left: 0;">To</label>
									<input type="date" min=<?php echo date('Y-m-d h:i:s') ?> name="to_date" id="to_date" class="form-control input-md" style=" margin-top: 12px;margin-left:20px;" required></input>
									<?php 
									if($product['cat_slug'] == 'Drama KIT' || $product['cat_slug'] == 'Dance KIT'||  $product['cat_slug'] == 'Fancy Dresses'){
										echo '		                    		
									
		                  				<label for="size" class="col-sm-1 control-label" style="margin-top: 8px; margin-left: 0;">Size</label>

		                    				<select class="form-control" id="size" name="size" required style="margin-left: 20px">
		                    					<option value="XS" selected>XS</option>
		                    					<option value="S" selected>S</option>
		                      					<option value="M" selected>M</option>
		                      					<option value="L" selected>L</option>
		                      					<option value="XL" selected>XL</option>
		                      					<option value="XXL" selected>XXL</option>
		                      					<option value="" selected>- Select -</option>
		                    				</select>
		                    				<a href = "https://www.google.com" style="margin-left:14px;target="_blank">Size chart</a>
		                  				</div>';
		                  				}
										if($product['cat_slug'] == 'Dance KIT'){
										echo '<div>
										<label for="color" class="col-sm-1 control-label" style="margin-top: 8px; margin-left: 0;">Color</label>
		                    				<select class="form-control" id="color" name="color" required style="margin-left: 20px">
		                      				<option value="Black" selected>Black</option>
		                      				<option value="Blue" selected>Blue</option>
		                      				<option value="Orange" selected>Orange</option>
		                      				<option value="Green" selected>Green</option>
		                      				<option value="Yellow" selected>Yellow</option>
		                      				<option value="" selected>- Select -</option>
		                    				</select>
		                    		
									
		                  				<label for="size" class="col-sm-1 control-label" style="margin-top: 8px; margin-left: 0;">Size</label>

		                    				<select class="form-control" id="size" name="size" required style="margin-left: 20px">
		                    					<option value="XS" selected>XS</option>
		                    					<option value="M" selected>S</option>
		                      					<option value="M" selected>M</option>
		                      					<option value="L" selected>L</option>
		                      					<option value="XL" selected>XL</option>
		                      					<option value="XXL" selected>XXL</option>
		                      					<option value="" selected>- Select -</option>
		                    				</select>
		                  				</div>';
		                  				}
		                  				if($product['cat_slug'] == '  '|| $product['cat_slug'] == 'Kids Photography Props'){
										echo '<div>
		                    			
								

		                  				<label for="size" class="col-sm-1 control-label" style="margin-top: 8px; margin-left: 0;">Size</label>

		                    				<select class="form-control" id="size" name="size" required style="margin-left: 20px">
		                    					<option value="S" selected>Age 0-2(Months)</option>
		                      					<option value="M" selected>Age 3-5(Months)</option>
		                      					<option value="L" selected>Age 6-10(Months)</option>
		                      					<option value="XL" selected>Age 11-13(Months)</option>
		                      					<option value="XXL" selected>Age 13-18(Months)</option>
		                      					<option value="" selected>- Select -</option>
		                    				</select>
		                  				</div>';
		                  				}

		                  				?>
		                  			</br>
		                  				<?php if(isset($_SESSION['user'])){?>
		                  		<div " style="float: left; margin-top: 12px;margin-left:10px;"class="input-group col-sm-5">
			            				<span class="input-group-btn">
			            					<button type="button" id="minus" class="btn btn-default btn-flat btn-lg"><i class="fa fa-minus"></i></button>
			            				</span>
							          	<input  type="text" name="quantity" id="quantity" class="form-control input-lg" value="1">
							            <span class="input-group-btn">
							                <button type="button" id="add" class="btn btn-default btn-flat btn-lg"><i class="fa fa-plus"></i>
							                </button>
							            </span>
							            <input type="hidden" value="<?php echo $product['prodid']; ?>" name="id">
							        </div>
							    
			
							<form action="cart_view.php" method="POST">
								<input id="amountPlaceHolder" type="number" name="amount" style="display: none;" value=0/>
								<button type="submit" style="float: right; margin-top: 12px;margin-left:10px;" class="btn btn-primary btn-lg btn-flat"><i class="fa fa-shopping-cart"> </i> Add to Cart</button>
							</form>
						<?php
							}
							else{
								echo "</br>
								</br>
								</br>
								</br>
							<h4>You need to <a href='login.php'>Login</a> to Add to cart.</h4>";
							}
						?>
		                  				
		            	</div>
		            	</form>

		            </div>

		            <br>
				    
	        	<div class="col-sm-3">
	        		
	        		<?php include 'includes/sidebar.php'; ?>
	        	</div>
	        </div>
	      </section>
	     
	    </div>
	  </div>
  	<?php $pdo->close(); ?>
  	<?php include 'includes/footer.php'; ?>
</div>

<?php include 'includes/scripts.php'; ?>
<script>
$(function(){
	$('#add').click(function(e){
		e.preventDefault();
		var quantity = $('#quantity').val();
		if(quantity < 5){
			quantity++;
		}
		$('#quantity').val(quantity);
	});
	$('#minus').click(function(e){
		e.preventDefault();
		var quantity = $('#quantity').val();
		if(quantity > 1){
			quantity--;
		}
		$('#quantity').val(quantity);
	});

});
</script>
</body>
</html>