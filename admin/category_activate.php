<?php
	include 'includes/session.php';

		$id = $_POST['id'];
		
		$conn = $pdo->open();

		try{
			$stmt = $conn->prepare("update category set active=:active WHERE id=:id");
			$stmt->execute(['active'=>0,'id'=>$id]);

			$_SESSION['success'] = 'User Deactivated successfully';
		}
		catch(PDOException $e){
			$_SESSION['error'] = $e->getMessage();
		}

		$pdo->close();
	header('location: users.php');
	
?>