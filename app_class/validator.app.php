<?php

class FormValidator
{
    private $data;
    private $requiredFields = [];
    public function __construct($postData)
    {
        $this->data = $postData;
    }

    public function validate()
    {
        // Common validation rules
        $this->validateRequiredFields();
        $this->validateEmailFormat();
        $this->validateUsernameFormat();
        $this->validatePasswordFormat();
    }

    private function validateRequiredFields()
    {
        // Check if required fields are present
        foreach ($this->requiredFields as $field) {
            if (empty($this->data[$field])) {
                throw new Exception("{$field} is required.");
            }
        }
    }

    private function validateEmailFormat()
    {
        // Check if email field is in a valid format
        if (!filter_var($this->data['email'], FILTER_VALIDATE_EMAIL)) {
            throw new Exception("Invalid email format.");
        }
    }

    private function validateUsernameFormat()
    {
        if ($this->data['username'] == "<script>alert('Hello!');</script>") {
            throw new Exception("You're a bad person! - " . htmlspecialchars($this->data['username'], ENT_QUOTES, 'UTF-8'));
        } else {
            // Check if username field is in a valid format
            if (!preg_match("/^[a-zA-Z ]*$/", $this->data['username'])) {
                throw new Exception("Invalid username format.");
            }
        }
    }

    private function validatePasswordFormat()
    {

        if (strlen($this->data['password']) <= '8') {
            throw new Exception("Password must be greater than or equal to 8 letters.");
        } elseif (!preg_match("#[0-9]+#", $this->data['password'])) {
            throw new Exception("Password must have a number");
        } elseif (!preg_match("#[A-Z]+#", $this->data['password'])) {
            throw new Exception("Password must have a uppercase letter.");
        } elseif (!preg_match("#[a-z]+#", $this->data['password'])) {
            throw new Exception("Password must have a lowercase letter.");
        } elseif (!preg_match('/[\'^£$%&*()}{@#~?><>,|=_+¬-]/', $this->data['password'])) {
            throw new Exception("Password must have a special character.");
        }
    }
}
