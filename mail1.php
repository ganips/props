<?php

$to_email = "kavya2001gowda@gmail.com";
$subject = "Simple Email Test via PHP";
$body = "Hi, This is test email send by PHP Script";
$headers = "From: kavyagowda0216@gmail.com";
// $headers.="Content-type:text/html\r\n";

if (mail($to_email, $subject, $body, $headers)) {
    echo "Email successfully sent to $to_email...";
} else {
    echo "Email sending failed...";
}
?>