<%@ Page Language="C#" AutoEventWireup="true" CodeFile="exe6IsraelForm.aspx.cs" Inherits="exe6IsraelForm" %>
<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["submit"] != null)
        {
            string type;
            type = Request.QueryString["type"];
            if (type == "cineret")
                Response.Redirect("http://www.ekinneret.co.il/");
            else if (type == "mezzada")
                Response.Redirect("http://www.masada.org.il/");
            else
                Response.Redirect("http://www.tiuli.com/article_info.asp?article_id=64");
        }
    }
</script>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Styles/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <h1>בחירת יעד למעבר למסלול:</h1>
    <form method="get" runat="server" action="" id="israel">
        <select name="type" id="type" size="1">
            <option value="cineret">כינרת</option>
            <option value="mezzada">מצדה</option>
            <option value="deadsea">ים המלח</option>
        </select>
        <input type="submit" id="submit" name="submit" />
    </form>
</body>
</html>
