<?php

$to = 'mmosuper25@gmail.com';
$subject = 'Testing sendmail.exe';
$message = 'Hi, you just received an email using sendmail!';
$headers = 'From: tranhoanguyenvan@gmail.com';
if (mail($to, $subject, $message, $headers))
    echo "Email sent";
else
    echo "Email sending failed";
?>