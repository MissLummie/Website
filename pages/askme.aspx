﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="askme.aspx.cs" Inherits="pages_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ask Me</title>
    <link rel="stylesheet" type="text/css" href="../styles/style.css" />
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

<h1>יש לכם שאלה אלי?</h1>
<form name="AskMe" id="AskMe" method="post" action="mailto:violetaluma@hotmail.com">

שם פרטי: <input type="text" name="fname" id="fname" /><br />
שם משפחה: <input type="text" name="sname" id="sname" /><br />

מגדר: <input type="radio" name="gender" id="gender" value="male" />גבר
<input type="radio" name="gender" id="gender" value="female" />אישה
<input type="radio" name="gender" id="gender" value="not" />אחר <br />

מייל: <input type="text" name="mail" id="mail" /><br />

מה השאלה?<br />
<textarea name="q1" cols="60" rows="4">כתבו כאן את השאלה שלכם ואני אענה</textarea><br />

<br /><input type="submit" value="שלח טופס" /><input type="reset" value="אפס טופס" />
</form>
</body>
</html>
