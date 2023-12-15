<?php
	include 'includes/session.php';

	$id = $_POST['id'];

	$conn = $pdo->open();

	$output = array('list'=>'');
	$output['list'] = null;

	$stmt = $conn->prepare("SELECT *, DATEDIFF(to_date, from_date) AS date_difference FROM details LEFT JOIN products ON products.id=details.product_id LEFT JOIN cart ON cart.product_id=details.product_id LEFT JOIN sales ON sales.id=details.sales_id WHERE details.sales_id=:id");
	$stmt->execute(['id'=>$id]);

	$total = 0;
	foreach($stmt as $row){
		$subtotal = $row['price']*$row['quantity'];
		$total += $subtotal*$row['date_difference'];
		$output['list'] .= "
			<tr class='prepend_items'>
				<td>".$row['name']."</td>
				<td>&#8377; ".number_format($row['price'], 2)."</td>
				<td>".$row['quantity']."</td>
				<td>&#8377; ".number_format($subtotal, 2)."</td>
			</tr>
		";
	}
	
	$output['total'] = '<b>&#8377; '.number_format($total, 2).'<b>';
	$pdo->close();
	echo json_encode($output);

?>