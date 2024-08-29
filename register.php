<?php

include './init.php';

include './config.db.php';

require(CLASS_DIR . 'template.app.php');

require(CLASS_DIR . 'validator.app.php');

require(CLASS_DIR . 'function_user.app.php');

$smarty = new My_App();

// Usage
if ($_SERVER["REQUEST_METHOD"] === "POST") {

    $validator = new FormValidator($_POST);

    $user = new User($mysqli);

    try {

        $validator->validate();

        // If validation passes, process the form
        if (!empty(($_POST["email"])) && !empty(($_POST["username"])) && !empty(($_POST["password"]))) {
            $email = trim($_POST["email"]);
            $username = trim($_POST["username"]);
            $password = password_hash(trim($_POST["password"]), PASSWORD_DEFAULT);

            $token_ = openssl_random_pseudo_bytes(16);

            $token = bin2hex($token_);
        }

        $result = $user->register_user_service($email, $username, $password, $token);

        if ($result) {
            echo json_encode(array('status' => 'success', 'message' => 'Registration was successfull!'));
        } else {
            echo json_encode(array('status' => 'error', 'message' => 'Failed Attempt. Try Again.'));
        }
    } catch (Exception $e) {
        echo json_encode(array('status' => 'error', 'message' => $e->getMessage()));
    }
}

//$smarty->display('extends:templates/parent.tpl|templates/register.tpl');
