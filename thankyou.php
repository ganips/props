<!DOCTYPE html>
<html>
    <head><title>Prentii</title></head>
    <?php include 'includes/session.php'; ?>
    <?php include 'includes/header.php'; ?>
    <?php 
        use PHPMailer\PHPMailer\PHPMailer;
        use PHPMailer\PHPMailer\SMTP;
        use PHPMailer\PHPMailer\Exception;

        $mail = new PHPMailer();
        $mail->IsSMTP();
        $mail->Mailer = "smtp";

        $random = rand();
        $stmt = $conn->prepare("INSERT INTO sales (id, user_id, pay_id, sales_date, amount) VALUES (:id, :user_id, :pay_id, :sales_date, :amount)");
        $stmt->execute(['id'=>$random, 'user_id'=>$_SESSION['user'], 'pay_id'=>$_POST['razorpay_payment_id'], 'sales_date'=>date('Y-m-d h:i:s'), 'amount'=>$_SESSION['amount']]);
        $stmt_cart = $conn->prepare("select * from cart where user_id='" . $_SESSION['user'] . "'");
        $stmt_cart->execute();
        foreach($stmt_cart as $row){
            $stmt_details = $conn->prepare("insert into details (id, sales_id, product_id, quantity) values (:id, :sales_id, :product_id, :quantity)");
            $stmt_details->execute(['id'=>rand(), 'sales_id'=>$random, 'product_id'=>$row['product_id'], 'quantity'=>$row['quantity']]);
        }
        $stmt_user = $conn->prepare("select * from users where id=:id");
        $stmt_user->execute(['id'=>$_SESSION['user']]);
        //$to = $stmt_user['email'];
        try {
            $mail->SMTPDebug  = 1;  
            $mail->SMTPAuth   = TRUE;
            $mail->SMTPSecure = "tls";
            $mail->Port       = 587;
            $mail->Host       = "smtp.gmail.com";
            $mail->Username   = "kavya2001gowda@gmail.com";
            $mail->Password   = "Nethravathi@123";

            $mail->IsHTML(true);
            $mail->AddAddress('monishabhoomi@gmail.com', 'monisha');
            // $mail->AddAddress($stmt_user['email'], $stmt_user['username']);
            $mail->SetFrom("kavya2001gowda@gmail.com", "Prentii");
            $mail->Subject = "Order Successfully placed with Prentii.!";
            $content = "
                <html>
                    <head>
                        <title>ORDER CONFIRMED</title>
                    </head>
                    <body>
                        <p>Yor Order has been Confirmed.</p>
                        <table>
                            <tr>
                                <th>Firstname</th>
                                <th>Lastname</th>
                                <th>Payment ID</th>
                                <th>Date</th>
                                <th>Amount</th>
                            </tr>
                            <tr>
                            </tr>
                        </table>
                    </body>
                </html>";
            $mail->MsgHTML($content); 
            if(!$mail->Send()) {
              echo "Error while sending Email.";
              var_dump($mail);
            } else {
              echo "Email sent successfully";
            }
        } catch (Exception $e) {
            echo "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
        }
        // $to = 'vinayraajbr.jit@gmail.com';
        // $subject = "Order Confirmation";
        // $headers = "MIME-Version: 1.0" . "\r\n";
        // $headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";

        // // More headers
        // $headers .= 'From: <kavya2001gowda@gmail.com>' . "\r\n";
        // $headers .= 'Cc: monishabhoomi@gmail.com' . "\r\n";
        
        // $message = "
        // <html>
        // <head>
        // <title>ORDER CONFIRMED</title>
        // </head>
        // <body>
        // <p>Yor Order has been Confirmed.</p>
        // <table>
        // <tr>
        // <th>Firstname</th>
        // <th>Lastname</th>
        // <th>Payment ID</th>
        // <th>Date</th>
        // <th>Amount</th>
        // </tr>
        // <tr>
        // </tr>
        // </table>
        // </body>
        // </html>";
        // mail($to, $subject, $message, $headers);
        // echo '<script>alert("I am sending mail.!")</script>';
    ?>
    <body class="hold-transition login-page">
        <div class="login-box">
            <div class="login-box-body">
                <center><h3> Payment Complete.! </h3></center>
                <center><p>Your Order is successfully placed.!</p></center>
                <br>
                <center><a href="index.php" class="text-center" style="text-decoration: underline;">Back to Hire more..</a></center>
            </div>
        </div>
    </body>
</html>