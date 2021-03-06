﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Signup.aspx.cs" Inherits="pages_Signup" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>הרשמה לאתר</title>
    <link rel="stylesheet" type="text/css" href="../styles/style.css" />

<script type="text/jscript">
    function isEmpty(str) { // function that check if the string is empty
        return (str.length == 0);
    }

    var msg = "";
    function checkForm() {
        if (isEmpty(document.getElementById("name").value)) // there is full name?
        {
            msg += "<li>   שם- חובה להקליד </li>";
        }

        if (isEmpty(document.getElementById("userName").value)) // there is username?
        {
            msg += "<li>   שם משתמש- חובה להקליד </li>";
        }

        if (isEmpty(document.getElementById("pass").value)) // there is pass?
        {
            msg += "<li>   ססמה- חובה להקליד </li>"
        }

        if (isEmpty(document.getElementById("email").value)) // there is email?
        {
            msg += "<li>   אימייל- חובה להקליד </li>";
        }

        if (isEmpty(document.getElementById("phoneN").value)) // there is phone?
        {
            msg += "<li>   טלפון- חובה להקליד </li>";
        }

        x = ""; // check pass lengh
        x = document.getElementById("pass").value;
        if (x.length < 5 || x.length > 16) {
            msg += "<li> סיסמא צריכה להיות בין 5-16 ספרות </li>";
        }


        if (msg.length > 1) // 
        {
            document.getElementById("errors").innerHTML = msg;
            msg = "";
            return false;
        }
        else {
            document.getElementById("errors").innerHTML = "מולא כנדרש";
            return true;
        }
    }
</script>
</head>
<body>
<div id="top">
<br /><br /><br /><br />
<table>
        <tr><td><br /></td></tr>
        <tr><td><a href="me.aspx"><img src="../pics/me1.png" /></a></td>
            <td><a href="why.aspx"><img src="../pics/why1.png" /></a></td>
            <td><a href="whatisit.aspx"><img src="../pics/what1.png" /></a></td>
            <td><a href="links.aspx"><img src="../pics/links1.png" /></a></td></tr></table>
        <tr><td><a href="askme.aspx">צור קשר</a></td> <td><a href="signup.aspx">להרשמה לאתר</a></td></tr>
 </table>        
</div>

<ul id="errors"> </ul>

<form action="" id="register"  onsubmit="return checkForm()">
<table><tbody>
<tr>
    <td><input type="text" name="name" id="name" size="20" /> </td>
    <td> שם מלא</td>
</tr>

<tr>
    <td><input type="text" name="userName" id="userName" /></td>
    <td>שם משתמש</td>
</tr>

<tr>
    <td> <input type="password" id="pass" />  </td>
    <td> סיסמא בין 5-16 ספרות</td>
</tr>

<tr>
    <td><input type="radio" name="gender" id="gender" value="male" />גבר
        <input type="radio" name="gender" id="gender" value="female" />אישה
        <input type="radio" name="gender" id="gendr" value="queer" />אחר </td>
    <td>מגדר</td>
</tr>

<tr>
    <td><select name="year" id="year">
    <option>1990</option> <option>1991</option>
    <option>1992</option> <option>1993</option>
    <option>1994</option> <option>1995</option>
    <option>1996</option> <option>1997</option>
    <option>1998</option> <option>1999</option>
    <option>2000</option> <option>2001</option>
    <option>2002</option> <option>2002</option>
    </select></td>
    <td>שנת לידה</td>
</tr>

<tr>
    <td><input type="text" name="email" id="email" size="30" /></td>
    <td>מייל</td>
</tr>

<tr>
    <td><input type="text" name="phoneN" id="phoneN" size="6" />
    <select name="phoneK" id="phonK">
        <option>050</option> <option>052</option> <option>053</option>
        <option>054</option> <option>055</option> <option>056</option>
        <option>057</option> <option>058</option> <option>059</option>
    </select></td>
    <td>טלפון</td>
</tr>

<tr>
    <td> <input type="submit" value="submit" id="send" /> </td>
</tr>

<tr>
    <td> <input type="reset" value="reset" />  </td>
</tr>

</tbody></table>
</form>
</body>
</html>
