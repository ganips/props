<?php
	include 'includes/session.php';
		$id = $_POST['id'];
		
		$conn = $pdo->open();

		try{
			$stmt = $conn->prepare("update products set active=:active WHERE id=:id");
			$stmt->execute(['active'=>0,'id'=>$id]);

			$_SESSION['success'] = 'Product activated successfully';
		}
		catch(PDOException $e){
			$_SESSION['error'] = $e->getMessage();
		}

		$pdo->close();
	header('location: products.php');
	
?>