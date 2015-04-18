<%@ Page Language="C#" AutoEventWireup="true" CodeFile="exe6Israel2.aspx.cs" Inherits="exe6Israel2" %>
<script runat="server">
    public string slogen = "";
    public string fontColor = "";
    public string fontSize = "";
    public string fontFace = "";
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["submit1"] != null)
        {
            slogen = Request.QueryString["slogen"];
            fontColor = Request.QueryString["fontColor"];
            fontSize = Request.QueryString["fontSize"];
            fontFace = Request.QueryString["fontFace"];
        }
    }
</script>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>כתוב סלוגן לבחירות</title>
    <link href="Styles/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <h1>כתוב את הסלוגן שלך, בחר צבע!</h1>
    <form method="get" runat="server" action="" id="slow">
            הקלד את הסלוגן:
        <input type="text" id="slogen" name="slogen"/>
        <br />
            בחר צבע:
        <select name="fontColor" id="fontColor">
            <option value="blue">Blue</option>
            <option value="pink">Pink</option>
            <option value="red">Red</option>
            <option value="green">Green</option>
            <option value="Purple">Purple</option>
        </select>
        <br />
            בחר גודל:
        <select name="fontSize" id="fontSize">
            <option value="2">2</option>
            <option value="4">4</option>
            <option value="6">6</option>
            <option value="8">8</option>
            <option value="10">10</option>
        </select>
        <br />
            בחר גופן:
        <select name="fontFace" id="fontFace">
            <option value="Aharoni">Aharoni</option>
            <option value="Arial (Hebrew)">Arial (Hebrew)</option>
            <option value="Times New Roman (Hebrew)">Times New Roman (Hebrew)</option>
        </select>
        <br />
        <input type="submit" id="submit1" name="submit1" />
    </form>

    <p>
        <font color="<%=fontColor %>" size="<%=fontSize %>" face="<%=fontFace %>"><%=slogen %> </font>
    </p>

</body>
</html>
