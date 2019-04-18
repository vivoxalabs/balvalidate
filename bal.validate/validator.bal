
// This module is used for validating data.

// ToDo:
// Add validation methods for 
// String, Integer, Email Addr etc.

import ballerina/io;


# Check whether @tainted string contains an Integer value
#
# + str - @tainted string  
# + return - true if str contains a Integer value
public function isInteger(string str) returns boolean {

    boolean | error is_int = str.matches("\\d+");
    if (is_int is error) {
        panic is_int;
    } else {
        return is_int;
    }
    
}

public function isValidEmail(string input) returns boolean {
    string regex = "";
    boolean|error isEmail = input.matches(regex);
    if (isEmail is error) {
        panic isEmail;
    } else {
        return isEmail;
    }
}

public function isValidPhoneNumber() returns boolean {
    return true;
}

public function isValidString() returns boolean {
    return true;
}