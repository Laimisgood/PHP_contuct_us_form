<?php

require "connection.php";
require 'phpm/PHPMailer.php';
require 'phpm/SMTP.php';
require 'phpm/Exception.php';

$mailadress = 'example@gmail.com';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {

    $name = trim($_REQUEST['name']);
    $surname = trim($_REQUEST['surname']);
    $gender = $_REQUEST['gender'];
    $email = trim($_REQUEST['email']);
    $password = password_hash(trim($_REQUEST['password']), PASSWORD_BCRYPT);
    $message = trim($_REQUEST['message']);
    $upload_image = $_FILES["image"]["name"];
    $feedback = $_REQUEST['feedback'];

    move_uploaded_file($_FILES["image"]["tmp_name"], "uploades/" . $_FILES["image"]["name"]);

    $user_is_created = $mysqli->query("INSERT INTO users (name, surname, gender, email, password, message, image, feedback) 
    VALUES ('$name', '$surname', '$gender', '$email', '$password', '$message', '$upload_image', '$feedback')");

    $title = "Feedback";
    $body = "
<h2>New message from</h2>
<b>name:</b>$name $surname<br>
<b>email:</b>$email<br><br>
<b>message:</b><br>$message
";


    $mail = new PHPMailer\PHPMailer\PHPMailer();
    if ($user_is_created) {

        try {
            $mail->isSMTP();
            $mail->CharSet = "UTF-8";
            $mail->SMTPAuth = true;
            //$mail->SMTPDebug = 2;
            $mail->Debugoutput = function ($str, $level) {
                $GLOBALS['status'][] = $str;
            };


            $mail->Host = 'smtp.gmail.com';
            $mail->Username = 'groupsimtech@gmail.com';
            $mail->Password = 'vliojbgksfiqpiit';
            $mail->SMTPSecure = 'ssl';
            $mail->Port = 465;
            $mail->setFrom('groupsimtech@gmail.com', 'Simtech School');


            $mail->addAddress($mailadress);



            $mail->isHTML(true);
            $mail->Subject = $title;
            $mail->Body = $body;


            if ($mail->send()) {
                $result = "success";
            } else {
                $result = "error";
            }

        } catch (Exception $e) {
            $result = "error";
            $status = "Сообщение не было отправлено. Причина ошибки: {$mail->ErrorInfo}";
        }
    }
}

require 'index.html';

exit;
