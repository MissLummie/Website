<%@ Page Language="C#" AutoEventWireup="true" CodeFile="me.aspx.cs" Inherits="pages_me" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>אז מי אני בעצם?</title>
    <link rel="stylesheet" type="text/css" href="../styles/style.css" />
    <script type="text/javascript">
        var i = 1;
        function next() {
            i++;
            if (i == 8) {
                i = 1;
            }
            pic.src = "../album/" + i + ".gif";
        }

        function prev() {
            i--;
            if (i == 0) {
                i = 8;
            }
            pic.src = "../album/" + i + ".gif";
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


<h1>ספרי לנו מי את!</h1> <p>
אז קודם כל- היי! אני אלומה, בת 15 מאשדוד, <br />
אני אוהבת לכתוב, לצייר, לשמוע שירים ולבלות עם חברים, <br />
לאחרונה התחלתי להתנדב במד"א וללמוד תכנות ובניית אתרים.
</p>

<h1>על מה האתר הזה הולך להיות?</h1> <p> 
נושא הגראפיקה הממוחשבת הוא נושא שמעסיק אותי כבר שנים רבות, <br />
למעשה- מאז שהייתי קטנה מאוד! <br />
אני מעצבת בתכנה "פוטושופ" מגרסה CS3 כבר 5 שנים, ולומדת לעצב באימג'רידי. <br /> <br />
באתר הזה אנסה להסביר לכם, הגולשים מספר דברים בסיסייים בעיצוב ובגראפיקה ממוחשבת. 
</p>
<p>
<h3>עבודות שלי</h3>
מתוך הבלוג: ELLE H&D israblog.co.il/849534<br />
<img src="../album/1.gif" name="pic" alt="תמונות מתחלפות!" />
<br />
<input type="button" value="Prev" onclick="prev()" />  
<input type="button" value="Next" onclick="next()" />
</p>
</body>
</html>
