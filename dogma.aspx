<%@ Page Language="C#" AutoEventWireup="true" CodeFile="dogma.aspx.cs" Inherits="dogma" %>
<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["submit"] != null)
        {
            string name, id, gender, mail, text, slogen, color, url;
            name = Request.QueryString["name"];
            id = Request.QueryString["id"];
            gender = Request.QueryString["gender"];
            mail = Request.QueryString["mail"];
            text = Request.QueryString["text"];
            slogen = Request.QueryString["slogen"];
            color = Request.QueryString["color"];
            url = Request.QueryString["url"];

            Response.Write("<div style=\"color:'"+ color + "'>" + slogen + "<div/>" + "<br/>");
            Response.Write("Hello all!! My name is " + gender + name + ", and im here to tell you some things..");
            Response.Write("<br/>" + text + "<br/>");
            Response.Write("<img src=\"" + url + "/>");
            Response.Write("For any Q&A: " + id + ", " + mail);
        }
    }
    
</script>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="poster" runat="server" method="get" action="">
        <input type="text" id="name" name="name" value="name"/><br />
        <input type="text" id="id" name="id" value="id"/><br />

        <input type="radio" value="mr." name="gender" />Male
        <input type="radio" value="mrs." name="gender" />Female
        <input type="radio" value="mr/s." name="gender" />Nope<br />

        <input type="text" id="mail" name="mail" value="mail"/><br />
        <textarea rows="5" cols="20" id="text" name="text">About me..</textarea><br />
        <input type="text" id="slogen" name="slogen" value="slogen"/><br />
        <select name="color" id="color">
            <option value="blue" id="blue">blue</option>
            <option value="green" id="green">green</option>
            <option value="red" id="red">red</option>
        </select><br />
        <input type="text" id="url" name="url" value="URL PIC OF ME"/><br />

        <input type="submit" name="submit" id="submit" value="submit" />
    </form>
</body>
</html>
