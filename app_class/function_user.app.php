<?php

class User
{
    //db stuffs
    private $conn;
    protected $row;
    protected $email;
    protected $username;
    protected $token;
    protected $stmt;
    protected $sql;
    protected $password;


    //constructor with db connection..
    public function __construct($mysqli)
    {
        $this->conn = $mysqli;
    }

    public function register_user_service($email, $username, $password, $token)
    {

        $this->token = $token;

        $this->email = $email;

        $this->password = $password;

        $this->username = $username;

        $sql3 = "INSERT INTO new_users (username, email, passwords, token_id) VALUES (?, ?, ?, ?)";

        if ($stmts = $this->conn->prepare($sql3)) {
            // Bind variables to the prepared statement as parameters
            $stmts->bind_param(
                "ssss",
                $this->email,
                $this->username,
                $this->password,
                $this->token
            );

            if ($stmts->execute()) {
                return true;
            } else {
                return false;
            }
        }
    }
}


?>