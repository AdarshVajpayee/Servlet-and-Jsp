/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

function clearErrors(){
    errors = document.getElementsByClassName('formError');
    
    for(let item of errors)
    {
        item.innerHTML = "";
    }
}

function seterror(id,error)
{
    element = document.getElementById(id);
    element.getElementsByClassName('formError')[0].innerHTML = error;
}

function validateForm()
{
    var returnVal=true; // By default we will set form to submit.
    clearErrors();
    //perform validation and if validation fails,set value of returnval to false.
    var fname = document.forms['MyForm']["fname"].value;
    if(fname.length < 5)
    {
        seterror("ftname","**Enter Your First Name**");
        returnVal =false;
    }
    if(fname.length == 0)
    {
        seterror("ftname","**Name cannot be empty**");
        returnVal =false;
    }
    
    var lname = document.forms['MyForm']["lname"].value;
    if(lname.length < 5)
    {
        seterror("ltname","**Enter Your Last Name**");
        returnVal =false;
    }
    
    if(lname.length == 0)
    {
        seterror("ltname","**Name cannot be empty**");
        returnVal =false;
    }
    
    var email = document.forms['MyForm']["femail"].value;
    if(email.length > 35)
    {
        seterror("email","**Email too Long**");
        returnVal =false;
    }
    
    var phone = document.forms['MyForm']["fphone"].value;
    if(phone.length != 10)
    {
        seterror("phone","**Phone number should be of 10 Digits**");
        returnVal =false;
    }
    
    // Create a logic to allow only those passwords which contain atleast one character ,one number and one special character and must contain one UpperCase .

    var password = document.forms['MyForm']["fpassword"].value;
    if(password.length < 6)
    {
        seterror("psw","**Password should contain 1 Uppercase,1 Special characters, 1 number and length should be greater than 6**");
        returnVal =false;
    }
    
    var cpassword = document.forms['MyForm']["cpassword"].value;
    if(cpassword != password)
    {
        seterror("cpsw","**Password should contain 1 Uppercase,1 Special characters, 1 number and length should be greater than 6**");
        returnVal =false;
    }
    
    return returnVal;
}

